docker network create \
  --driver=bridge \
  --subnet=192.168.100.0/24 \
  --gateway=192.168.100.1 \
  workshop-network

docker run -dit --name server --network workshop-network --ip 192.168.100.10 ssh-server
docker run -dit --name cliente --network workshop-network --ip 192.168.100.20 ssh-client
