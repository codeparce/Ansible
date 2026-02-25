

# Levnatar vms con Docker

```bash 
cd nodos/Docker 

docker compose up -d --build
docker compose down


# ver ips de vms
docker inspect -f '{{.Name}} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -q)
docker ps -a --format '{{.ID}}'

## Comandos de ayuda
cp /home/jdorado/.ssh/id_rsa.pub .
ssh admin@127.0.0.1 -p 2221
sudo systemctl docker
```

