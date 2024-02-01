---
tags:
  - Hacking
  - Networks
  - TODO
---
## Maskara

`ifconfig` Agindua erabiltzen badugu, gure sarearen maskara ikus dezakegu `netmask 255.255.0.0` nere kasuan.

![[Pasted image 20231211221636.png]]

Atakante bezela, maskara honek, sarearen egitura ezagutzen lagunduko digu. Informazio hau erabilgarria izango zaigu analisi fasean, sarea nola eskaneatzeko adibidez.


*Subnetting : Sare haundi bat, zenbait sare txikitan banatzean datza*. *Hau kontuz eta planifikazioz egin behar da IPV4 helbideak ez desapobetzatzeko, gogoratu zein gutxi onartzen dituen protokoloak*

---

Sortuko dugu excel fitxategi bat maskararen ezaugarriak eta motak hobetu ulertzeko.

[Ikusi excela](https://docs.google.com/spreadsheets/d/1XHKRUXkgOZAOelCKutF83DzA1dnqxUMUTOmSTZSgDVo/edit?usp=sharing)

1. Lehenik, 8 posizioko zenbaki bitar ba irudikatuko dugu balioak jarriz, eta goian posizioaren pisua.
   
![Alt text](<../Images/Pasted image 20231221124205.png>)
![[Pasted image 20231221124205.png]]

1. Hurrengo kalkulua sistema bitarretik hamartarrera pasatzeko balio digu, hau da posizioaren balioa 0/1 biderkatuz posizioaren pisuaz.

![Alt text](<../Images/Pasted image 20231221124348.png>)
![[Pasted image 20231221124348.png]]
![Alt text](<../Images/Pasted image 20231221124403.png>)
![[Pasted image 20231221124403.png]]

1. Taulari formatoa ezarriz, eta taula hau lau aldiz errepikatuz, gure maskara irudika dezakegu:

![Alt text](<../Images/Pasted image 20231221125101.png>)
![[Pasted image 20231221125101.png]]

---
# CDIR eta Host kopuruaren kalkulua


![Alt text](<../Images/Pasted image 20231221130840.png>)
![[Pasted image 20231221130840.png]]

1. CIDR: Izendapen estandar bat da, gura maskarern 1 zenbakien kopuruaren araberakoa, kalkulatzeko
![Alt text](<../Images/Pasted image 20231221131002.png>)
![[Pasted image 20231221131002.png]]

1. Host kopurua, maskara bat aplikatuta, libre daduden helbide guztiak izango dira. Hauda da, zero kopurua kontatu eta 2^(zero kopurua)

![Alt text](<../Images/Pasted image 20231221131135.png>)
![[Pasted image 20231221131135.png]]
![Alt text](<../Images/Pasted image 20231221131152.png>)
![[Pasted image 20231221131152.png]]

---
## Maskara klaseak

Sortu tab berri bat eta hurrengo taula eraiki:

![Alt text](<../Images/Pasted image 20231221133115.png>)
![[Pasted image 20231221133115.png]]
![Alt text](<../Images/Pasted image 20231222093449.png>)
![[Pasted image 20231222093449.png]]

![Alt text](<../Images/Pasted image 20231222093428.png>)
![[Pasted image 20231222093428.png]]

---
## Ariketatzoak 

Oharra: Eskuragarri dauden IP helbideen artean, lehen eta azkenengoa ez ditugu kontuan izango. 
- Lehen IP helbidea, network Id izena du
- Azken IP helbidea broadcast address izena du

kalkulatu hurrengo sare configuraziona zenbat ip izango diren eskura.

- 192.168.0.1/26
- 10.10.0.0/24
- 10.10.1.15/23
- 192.168.112.165/25
- 192.168.1.0/23
- 192.168.2.0/23
- 192.168.3.0/23
- 10.10.13.124/19
- 10.10.38.12/19
- 13.13.13.13/13
---

[ip address-guide cidr calc](https://www.ipaddressguide.com/cidr)

![Alt text](<../Images/Pasted image 20231222094358.png>)
![[Pasted image 20231222094358.png]]

---

## Kalkulo aritmetikoa Network ID eta Broadcast Addressa Kalkulatzeko

- 172.14.15.16/17

```bash
> echo "obase=2;172" | bc
10101100
> echo "obase=2;14" | bc
1110
> echo "obase=2;15" | bc
1111
> echo "obase=2;16" | bc
10000
```

+ 10101100.00001110.00001111.00010000 (172.14.15.16)

```bash
> echo "ibase=2;10000000" | bc
128
```

+ 11111111.11111111.10000000.00000000 (255.255.128.0)

### AND Ip eta maskararen artean

- 10101100.00001110.00001111.00010000
- 11111111.11111111.10000000.00000000
---
- 10101100.00001110.00000000.00000000 [AND] (172.14.0.0 - Network ID)
- 10101100.00001110.01111111.11111111 (172.14.127.255 - Broadcast Address)


webgune hau kalkuloen azalpenak ematen ditu:
[Ip calc, blog jodies](https://jodies.de/ipcalc)

