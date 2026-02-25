# Ansible + Vagrant + Docker + VMs

Para Levantar el **laboratorio** recomiendo instalar wsl y utilziar la solucion Vagrant

Para levantar **multiples nodos** pero contareas pequñas usar docker

## Instalar Ansible

```bash 
sudo apt update
sudo apt install ansible -y
ansible --version

```
---

**Primero** se deberia levantar las vms para hacer las practicas 

#### - [VMs con docker](./nodos/Docker/README.MD)
#### - [Vms con Vagrant y VB](./nodos/vagrant/README.MD)


## Correr playbook

```bash 
cd playbook

ansible-playbook -i hosts tools_basic.yml

ansible-playbook -i inventory.ini playbook.yml
```

### Maquinas virtuales linux

https://www.tutorialspoint.com/compilers/online-linux-terminal.htm

https://bellard.org/jslinux/
