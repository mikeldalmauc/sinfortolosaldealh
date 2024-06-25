# Segurtasuna Aitorpena Froga

- [Segurtasuna Aitorpena Froga](#segurtasuna-aitorpena-froga)
  - [Nola ebaluatuko da](#nola-ebaluatuko-da)
  - [Ingurunea prestatu](#ingurunea-prestatu)
  - [1. ariketa](#1-ariketa)
  - [2. Ariketa](#2-ariketa)
  - [3.Ariketa](#3ariketa)

## Nola ebaluatuko da

| Kontzeptua          | Puntuak  |
|-------------------- |-------- |
| Ariketa 1.1         | 1     |
| Ariketa 1.2         | 2     |
| Ariketa 2.1         | 2     |
| Ariketa 2.2         | 1     |
| Ariketa 3.1         | 1     |
| Ariketa 3.1         | 2     |
| Zuzentazuna eta dokumentazioaren formatua*    | 1  | 

**Kodea bash sintaxi highlightinarekin eta kopiatu ahal izan behar da.*
**Izneburua, aurkibidea, etb*

**Ariketa guztietan, erabilitako aginduak zehaztu behar dira.*

Azterketa ikasgelara igoko da.

## Ingurunea prestatu

Azterketako ingurunea `docker-compose.yml` fitxategi baten aurkituko duzue karpeta honetan. Kokatu azterketako kontendore guztiak zuen kali linux makinaren sare berdinean azterketa ebazten hasteko. 

Behar izatekotan dockehuben, kali makina bat daukazue eskuragarri erabili ditugun tresna eta liburutegiekin, **mikeldalmauc/kali-si** izenarekin. [Docker-hub mikeldalmauc/kali-si](https://hub.docker.com/repository/docker/mikeldalmauc/kali-si/general)

Behar izatekotan, `.env` fitxategi bat izango duzue kontenedoreen sarea ezartzeko, bestela aldaketaren bat egin beharko duzue docker-compose fitxategian sarea ondo sor dadin. 

*Oharra: Sare horretan ez da beste kontendorerik egon behar, solik azterketakoak eta kali makinarena.*

## 1. ariketa

1. Aztertu sarea nmap erabiliz, zehaztu ip-a, maskara eta CIDR-a, erakutsi nmap-en ireteera.

2. Demagun sare osoa aztertzea oso geldoa dela eta ordu asko daramatzala. Hurrengo estrategia aplikatzea erabaki duzu.
   1. Ping sweep bat egin sare osoari.
   2. Aurkitutako host bakoitzereako, nmap agindu bat erabiliko dugu hurrengo ezaugarriekin, zehaztu nola izango litzateke agindua eta bere parametroak.
      1. 200 portu erabilienak eskaneatuko ditugu
      2. Temporizado plantilla T5 erabiliko dugu.
      3. DNS ez aplikatu
      4. Verbose moduan, emaitzak ikusten joateko eskaneoa martxan doan bitartean. 

## 2. Ariketa

1. Aztertu ftp zerbitzuak eta aurkitu modu anonimoan logeatzen onartzen dutenak. Erakutsi nmapen iretera. Logeatu zebitzarian eta deskargau fitxategiren bat, erakutsi fitxategiaren edukia.

2. Demagun aztertzen ari garen ordenagailuak oso hurrun daudela eta sarea oso geldoa dela, zer egi zenzake aitorpena azkartzeko?. Zehaztu 2 neurri.

## 3.Ariketa

Aurreko hosten artean, web Zerbitzari bat aurkituko duzue. Fuzzing aplikatu hurrenko dikzionarioa erabiliz:

https://github.com/danielmiessler/SecLists/blob/master/Discovery/Web-Content/common-and-spanish.txt

1. Aurkitu zerbitzariaren erroan dauden fitxategian html edo extensiorik gabeak, zer agindu erabili duzu? Kopiatu terminaleko irteera erantzunean.

2. Aurkitu zerbitzariaren erroan dauden fitxategiak java, sh edo php extensioekin. zer agindu erabili duzu? Kopiatu terminaleko irteera erantzunean.

