docker exec -it client sh

# Dentro del contenedor como sshclient
su - sshclient
ssh -i ~/.ssh/id_rsa sshuser@192.168.100.11
