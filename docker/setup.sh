sudo -i

mkdir /var/www

mkdir /var/www/shenman
mount -t vboxsf shenman /var/www/shenman

exit
cd /mnt/taotaole/server/docker
docker run -v "$(pwd)":"$(pwd)" -v /var/run/docker.sock:/var/run/docker.sock  -e COMPOSE_PROJECT_NAME=$(basename "$(pwd)") --workdir="$(pwd)" -ti --rm dduportal/docker-compose:latest up -d