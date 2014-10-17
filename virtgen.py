

amount = 30
ip = "84.234.229"

e = """
auto eth0:%d
iface eth0:%d inet static
    address %s.%d
    netmask 255.255.255.192
    network %s.64
    broadcast %s.127"""

for n in range(1, amount + 1):
    print(e % (n, n, ip, 90+n, ip, ip ))
