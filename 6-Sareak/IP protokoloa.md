# IP protokoloa

## IP helbideak

Hurrengo komandoak ip *inet* 172.17.0.2 erakusten du, eta Interneteko protokoloa erabiltzen duen sare batean ekipoa identifikatzen duen ip pribatua da.

![Alt text](<irudiak/Pasted image 20231211221636.png>)
![Alt text](<irudiak/Pasted image 20231211222029.png>)

## Sare motak

Lau ordenagailu, switch bat eta router bat dituen sare bat ikusiko dugu. Lau ordenagailuek antzeko IPak dituzte, guztiek dute amankomunean "192.168.3" ekin hasten direla. Beraz, sarea "192.168.3.0/24" da.

Hau da, sareko helbide bat ordenagailuek eta gainerako bitek (hosten zati bat) zeroan komunean duten zati osoa da, baina maskara CIDR formatuan adierazita. Broadcasten helbidea da gainerako bitak (hosten zati bat) batera dituela.

![alt text](image.png)

| Sare Helbidea | Broadcast Helbidea     | Host baten helbidea  |
|--------------|-----------------------|--------------------|
| 192.168.3.0/24  | 	192.168.3.255   | 192.168.3.77        |

## Routerra

Orain ordenagailu berri bat gehituko dugu Interneten "beste aldean"

![alt text](image-1.png)

Ordenatu berri horrek "192.168.4.123" IPa du. Badakigu sarea C motakoa zela, beraz, sarearen helbidea "192.168.4.0/24" da. Routerrak "192.168.4.56" helbidea du.

Baina router bakoitzak 2 IP dituela ikus dezakegu, hau da, bi sare desberdinetara konektatuta dagoelako eta sare bakoitzean IP desberdinak dituelako. Sare-interfazeak izeneko bi sare-txartel ere izan behar ditu.

- **A Routerra** (eskumakoa)

| IP	| Mascara	| Interfaz de red |
|--------------|-----------------------|--------------------|
|192.168.3.34	255.255.255.0	eth0 |
|3.239.54.197	255.255.255.0	eth1 |

- **B Routerra** (ezkerrekoa)
- 
|IP	|Mascara	Interfaz de red
|67.45.67.3	255.255.255.0	eth0
|192.168.4.56	255.255.255.0	eth1