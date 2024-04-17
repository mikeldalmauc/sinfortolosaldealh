
- [Zein da zure IP lokala](#zein-da-zure-ip-lokala)
- [Ip bat bitarrera bihurtu](#ip-bat-bitarrera-bihurtu)
  - [Aldatu guztiak bukle bat erabiliz](#aldatu-guztiak-bukle-bat-erabiliz)
  - [Ariketa: Bihurtu ipv6 sistema bitarrera](#ariketa-bihurtu-ipv6-sistema-bitarrera)


## Zein da zure IP lokala

Hurrengo komandoak ip *inet* 172.17.0.2 erakusten du, eta Interneteko protokoloa erabiltzen duen sare batean ekipoa identifikatzen duen ip pribatua da.

![Alt text](<../Images/Pasted image 20231211221636.png>)

![Alt text](<../Images/Pasted image 20231211222029.png>)

---

## Ip bat bitarrera bihurtu


Bc programa erabiliz, ip programa bitar bihur dezakegu.

![Alt text](<../Images/Pasted image 20231211224000.png>)

Bere zortzikote bakoitzerako eginez

```
 echo "$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc)"
```

Hau izango litzateke ip horren bitar errepresentazioa:


![Alt text](<../Images/Pasted image 20231211224735.png>)

---

Gutxi gorabehera, 4300 milioi ips adierazgarri daitezke ipv4 protokoloaren bidez, hau da, oso gutxi biztanleria eta gaur egun Internetera konektatzen diren gailuen kopurua kontuan hartuta.


![Alt text](<../Images/Pasted image 20231211224919.png>)

IPv6k 128 bit ditu, eta hainbeste gailu adierazteko aukera ematen du

![Alt text](<../Images/Pasted image 20231211225140.png>)

---

Hurrengo ipv6* inet6* sistema hamaseitarretan jarrita dago, zenbaki bakoitza adierazteko 4 bit behar dira, hau da, 16 bit bloke bakoitzeko 684d:17ff:fe17:da04 beheko adibidean.

![Alt text](<../Images/Pasted image 20231211232831.png>)

Beste parametro garrantzitsu batzuk, netmask eta broadcast dire, sare lokal batean zenbat IP banatu diren ulertzen lagunduko baitigute.

---

### Aldatu guztiak bukle bat erabiliz

```
for octeto in $(hostname -I | tr '.' ' '); do echo "obase=2;$octeto" | bc; done
```

Aurreko erantzuneko ipa itzuliko luke

![Alt text](<../Images/Pasted image 20231211223829.png>)

---
### Ariketa: Bihurtu ipv6 sistema bitarrera


