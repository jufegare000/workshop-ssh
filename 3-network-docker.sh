docker network create \
  --driver=bridge \
  --subnet=192.168.100.0/24 \
  --gateway=192.168.100.1 \
  workshop-network

docker run -dit --rm --name server --network workshop-network --ip 192.168.100.10 ssh-server
docker run -dit --rm --name cliente --network wokshop-network --ip 192.168.100.20 ssh-client
