
cp /home/jdorado/.ssh/id_rsa.pub .

docker compose down
docker compose build --no-cache
docker compose up -d


 docker ps -a --format '{{.ID}}'
ssh admin@127.0.0.1 -p 2221

sudo systemctl docker