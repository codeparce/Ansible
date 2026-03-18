# Ansible + Vms

Para Levantar el laboratorio recomiendo instalar wsl o levantar maquina con vagrant

## Instalar Ansible

```bash 
sudo apt update
sudo apt install ansible -y
ansible --version

```

## Correr playbook

```bash 

ansible-playbook -i inventory.ini ./init/agent_azure.yml
```

