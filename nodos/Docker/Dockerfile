FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

RUN useradd -m -s /bin/bash admin && \
    echo 'admin:admin' | chpasswd && \
    usermod -aG sudo admin

# Crear carpeta .ssh
RUN mkdir -p /home/admin/.ssh && \
    chmod 700 /home/admin/.ssh && \
    chown admin:admin /home/admin/.ssh

COPY id_rsa.pub /home/admin/.ssh/authorized_keys

RUN chmod 600 /home/admin/.ssh/authorized_keys && \
    chown admin:admin /home/admin/.ssh/authorized_keys

# 🔐 Deshabilitar password login
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config

# (Opcional pero recomendado para Ansible)
RUN echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]