
ip = "84.234.229"

rows = 7

k = 0
for n in range(1, rows + 1):
    print("iptables -t nat -A POSTROUTING -o eth0:%d -s 172.16.%d.1/25 -j SNAT --to-source %s.%d" % (k+10, n, ip, 100+k))
    k += 1
    print("iptables -t nat -A POSTROUTING -o eth0:%d -s 172.16.%d.128/25 -j SNAT --to-source %s.%d" % (k+10, n, ip, 100+k))
    k += 1
