docker exec -it client sh

# Dentro del contenedor
su - sshclient
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

# Copiar clave pública al servidor (puedes usar un comando intermedio o volumen compartido)

