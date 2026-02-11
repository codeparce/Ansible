FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

# Crear usuario admin
RUN useradd -m -s /bin/bash admin && \
    usermod -aG sudo admin

# Crear carpeta .ssh
RUN mkdir -p /home/admin/.ssh && \
    chown admin:admin /home/admin/.ssh && \
    chmod 700 /home/admin/.ssh

# Copiar clave pública
COPY id_rsa.pub /home/admin/.ssh/authorized_keys

RUN chown admin:admin /home/admin/.ssh/authorized_keys && \
    chmod 600 /home/admin/.ssh/authorized_keys

# Deshabilitar password
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

RUN echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]