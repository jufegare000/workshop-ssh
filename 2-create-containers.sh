# 1. correr container file
docker build -t ssh-server -f ./containerfiles/server.Containerfile .
docker build -t ssh-cliente -f ./containerfiles/client.Containerfile .
