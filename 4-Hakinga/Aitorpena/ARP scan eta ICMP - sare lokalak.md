# ARP scan eta ICMP

## arp-scan Aztertu sare lokala 

```bash
arp-scan -I eth0 --localnet
arp-scan -I eth0 --localnet --ignoredups
```

## Massscan milloika hosts minuturo

```bash
# Erabilera
masscan

# Adibidea
masscan -21,22,139,445,8080,80,443 -Pn 192.168.0.0/16 --rate=10000

```
