# Crear una red bridge
nmcli connection add type bridge con-name host-custom-network ifname host-cstom-network

# Asignar una IP estática (ajusta si es necesario)
nmcli connection modify host-custom-network ipv4.addresses 192.168.100.1/24 ipv4.method manual

# Activar la conexión
nmcli connection up host-custom-network
