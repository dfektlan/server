
LANIF="eth1"
WANIF="eth0"


iptables -F
iptables -t nat -F

iptables -A FORWARD -i $WANIF -o $LANIF -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i $LANIF -o $WANIF -j ACCEPT
#iptables -t nat -A POSTROUTING -o $WANIF -j MASQUERADE
iptables -t nat -A POSTROUTING -o $WANIF -j SNAT --to 192.168.10.200-192.168.10.201
#iptables -t nat -A POSTROUTING -o $WANIF -j SNAT --to 192.168.10.201

echo 1 > /proc/sys/net/ipv4/ip_forward
