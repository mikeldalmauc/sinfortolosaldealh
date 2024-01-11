
Atakante bezala, funtzeskoa da ezagutzea zen portu dauden zabalik.

100 portu arruntenak eskaneatzeko

```bash
nmap -p- 192.168.0.1 
```

65535 portu daude, guztiak eskaneatzeko

```bash
nmap -p1-65535 192.168.0.1 
```
---

- Portua egon daiteke Zabalik, Itxita edo Filtratua

500 portu erabilienak eskaneatzeko:

```bash
nmap --top-ports 500 192.168.0.1 
```

Bakarrik zabalik dauden portuak eskaneatzeko:

```bash
nmap --top-ports 500 --open 192.168.0.1 
```


Verbose, eskaneoa astiro badoa eta aldi berean zein portu dauden zabalik jakin nahi badugu:

```bash
nmap --top-ports 500 --open 192.168.0.1 -v
```

DNS ez aplikatzeko erabili, eskaneoa azkarragoa izango da:
```bash
nmap --top-ports 500 --open 192.168.0.1 -v -n
```

Plantilla de temporizado 

```bash

```

Ariketak

Ma

```bash
docker run -d \ 
	--name juiceshop \ 
	--network vulnerable \ 
	--ip="10.0.0.6" \ 
	bkimminich/juice-shop
```

Refs

https://ianmuchina.com/docker-lab/
