
Atakante bezala, funtzeskoa da ezagutzea zen portu dauden zabalik.

### Oinarrizko parametroak
Portu guztiak eskaneatzeko

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

---
Verbose, eskaneoa astiro badoa eta aldi berean zein portu dauden zabalik jakin nahi badugu:

```bash
nmap --top-ports 500 --open 192.168.0.1 -v
```

DNS ez aplikatzeko erabili, eskaneoa azkarragoa izango da:
```bash
nmap --top-ports 500 --open 192.168.0.1 -v -n
```

---
### Plantilla de temporizado:

-Tn  (n : 0 - 5) 
0. Oso geldoa baina ixila (modo paranoico)
5. Oso azkarra baina saratatzua (modo loco)

```bash
nmap -p- -T5 192.168.0.1 
```

---
### TCP connect scan

Eskaneatze modu honetan, nmap-ek tcp protokoloaren 3-way-handshake-a egiten saiatuko da. Gogoratu nola harrapau genituen pakete hauek Wiresharken:
- Portua zabalik badago (SYN ACK -> SYN -> ACK )
- Portua itxita badao (SYN ACK -> RST )
  
```bash
nmap -p- -T5 -sT --open 192.168.0.1 -v -n
```

---
### Eskaneatu edozein host (activos y no activos)

- -Pn parametroa erabili beharko dugu

![[Pasted image 20240111125658.png]]

```bash
nmap -p- -T5 --open 192.168.0.1 -v -n -Pn
```

---
### UDP protokoloa erabiliz eskaneatu

- -Su  parametroa erabiliko dugu honetarako

```bash
nmap --top-ports 100 --open -Su 192.168.0.1 -v -n
```

---
### Piztutako Hostak aurkitzeko subsare baten (Ping sweep)

```bash
nmap -sn 192.168.0.1/24
 ```

### Sistema eragilearen ezaugarriak aurkitzeko

⚠️ Ez dago oso gomendatuta, astuna baita.

```bash
nmap -O 192.168.0.1
```