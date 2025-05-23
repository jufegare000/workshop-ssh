# Copiar clave pública
docker cp client:/home/sshclient/.ssh/id_rsa.pub ./id_rsa.pub

# Pegar en el contenedor servidor
docker cp ./id_rsa.pub server:/home/sshuser/.ssh/authorized_keys

# Fijar permisos adecuados en el contenedor servidor
docker exec -it server sh -c "chown sshuser:sshuser /home/sshuser/.ssh/authorized_keys && chmod 600 /home/sshuser/.ssh/authorized_keys"

