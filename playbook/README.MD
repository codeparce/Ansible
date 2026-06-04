# Ansible + Vms

Para Levantar el laboratorio recomiendo instalar wsl o levantar maquina con vagrant

## Instalar Ansible (linux)

```bash 
sudo apt update
sudo apt install ansible -y
ansible --version

```

## Correr playbook

```bash 

ansible-playbook -i inventory.ini ./devops/site.yml

```

