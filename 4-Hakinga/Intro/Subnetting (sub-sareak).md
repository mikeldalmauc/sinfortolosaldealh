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
   
![[Pasted image 20231221124205.png]]

2. Hurrengo kalkulua sistema bitarretik hamartarrera pasatzeko balio digu, hau da posizioaren balioa 0/1 biderkatuz posizioaren pisuaz.

![[Pasted image 20231221124348.png]]
![[Pasted image 20231221124403.png]]

3. Taulari formatoa ezarriz, eta taula hau lau aldiz errepikatuz, gure maskara irudika dezakegu:

![[Pasted image 20231221125101.png]]

---
# CDIR eta Host kopuruaren kalkulua


![[Pasted image 20231221130840.png]]

1. CIDR: Izendapen standar bat da, gura maskarern 1 zenbakien kopuruaren araberakoa, kalkulatzeko
![[Pasted image 20231221131002.png]]

2. Host kopurua, maskara bate aplikatu eta gero, libre daduden helbide guztiak izango dira. Hauda da, zero kopurua kontatu eta 2^(zero kopurua)

![[Pasted image 20231221131135.png]]
![[Pasted image 20231221131152.png]]

---
## Maskara klaseak

