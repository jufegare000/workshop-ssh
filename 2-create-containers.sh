# 1. correr container file
docker build -t ssh-server -f ./containerfiles/server.Containerfile .
docker build -t ssh-client -f ./containerfiles/client.Containerfile .
