docker exec -it server sh

# En /etc/ssh/sshd_config
# Asegúrate que estas líneas estén:
PasswordAuthentication no
PubkeyAuthentication yes
AuthorizedKeysFile /home/sshuser/.ssh/authorized_keys

# Reiniciar sshd si es necesario
pkill sshd
/usr/sbin/sshd
