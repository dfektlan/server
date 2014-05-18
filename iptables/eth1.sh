
ip link set dev eth0 up
ip addr add 192.168.10.200/24 broadcast 192.168.10.255 dev eth0
ip addr add 192.168.10.201/24 broadcast 192.168.10.255 dev eth0
ip route add default via 192.168.10.1

ip link set dev eth1 up
ip addr add 192.168.66.1/24 dev eth1
