# Segurtasuna Aitorpena Froga

## Helburua

Froga honen helburua sare batean dauden makina batzuk aztertzea eta bi kode aurkitzea da.

- [Segurtasuna Aitorpena Froga](#segurtasuna-aitorpena-froga)
  - [Helburua](#helburua)
  - [Zer entregatu behar da](#zer-entregatu-behar-da)
  - [Ingurunea prestatu](#ingurunea-prestatu)
  - [Lehen Kodea](#lehen-kodea)
  - [Bigarren Kodea](#bigarren-kodea)

## Zer entregatu behar da

Partekaturiko drive karpetan markdown fitxategi bat gehitu azterketaren ebazpenarekin. Hau da, erabilitako agindu garrantzitsuenak eta pausoak era laburrean baina argian 

## Ingurunea prestatu

Partaide bakoitzak `docker-compose.yml` fitxategi bat eta `.env` fitxategi bat izango ditu partekatuta google driven. Ezarri `.env` fitxategian zuen kali linux makina dagoen sarearean izena, horrela kontendore berriak sare berdinera gehituko dira eta ez duzue zergaitik beste kali makina bat sortu beharko eta denbora galdu. 

*Oharra: Egokia izango litzateke aurretikan zeneuzkaten beste makinak itzaltzea azterketarako.*

## Lehen Kodea

Lehen kodea ftp serbitzari baten aurkituko duzue.

## Bigarren Kodea

Kode hau, web zerbitzari baten aurkituko duzue. 

Zerbitzariaren erroan fuzzing aplikatu hurrenko dikzionarioa erabiliz:

https://github.com/danielmiessler/SecLists/blob/master/Discovery/Web-Content/common-and-spanish.txt

Horrez gain, fuzzing aplikatu dikzionario berdinareking .jar fitxateg bat bilatzeko.