# Copiar clave pública
docker cp client:/home/sshclient/.ssh/id_rsa.pub ./id_rsa.pub

# Pegar en el contenedor servidor
docker cp ./id_rsa.pub server:/home/sshuser/authorized_keys

# Fijar permisos adecuados en el contenedor servidor
docker exec -it server sh -c "chown sshuser:sshuser /home/sshuser/authorized_keys && chmod 600 /home/sshuser/authorized_keys"

