# Ansible + WSL + Docker

Para Levantar el laboratorio recomiendo instalar wsl , para simular vms con docker 

## Instalar Ansible

```bash 
sudo apt update
sudo apt install ansible -y
ansible --version

```
## Levnatar vms(contendores)

```bash 
cd Docker 

docker compose up -d --build

# ver ips de vms
docker inspect -f '{{.Name}} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q)


```
## Correr playbook

```bash 
ansible-playbook -i hosts tools_basic.yml
```

### Maquinas virtuales linux

https://www.tutorialspoint.com/compilers/online-linux-terminal.htm

https://bellard.org/jslinux/
