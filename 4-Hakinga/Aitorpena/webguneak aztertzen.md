# Webguneen segurtasuna aztertzen

## Webgune baten teknologiak identifikatzen

Segurtasunaren ikuspegitik, funtsezkoa da web orri batean erabiltzen diren teknologiak eta tresnak ezagutzea. Teknologia horiek identifikatzeak aukera ematen die segurtasuneko adituei webgune baten arrisku potentzialak ebaluatzeko, urrakortasunak identifikatzeko eta informazio sentikorra eta datu kritikoak babesteko estrategia eraginkorrak diseinatzeko.

Lineako hainbat tresna eta utilitate daude web orri batean erabiltzen diren teknologiak identifikatzeko. Tresna ezagunenetako batzuk Whatweb, Wappalyzer eta builtwith.com dira. Tresna horiek web-orria eskaneatzen dute, eta erabilitako teknologiei buruzko informazio zehatza ematen dute, hala nola programazio-lengoaiari, web-zerbitzariari eta edukia kudeatzeko sistemei buruzkoa, besteak beste.

Whatweb tresna urrakortasunak aztertzeko erabilgarritasun bat da, web-orria eskaneatzen duena eta erabilitako teknologiei buruzko informazio zehatza ematen duena. Tresna hori erabil daiteke, halaber, web-orrian egon daitezkeen ahulguneak eta ahulguneak identifikatzeko.

Wappalyzer, bestalde, web orrian erabiltzen diren teknologiak detektatu eta erakusten dituen nabigatzailearen luzapena da. Tresna hau bereziki erabilgarria da web-orri batean erabilitako teknologiak berehala identifikatu nahi dituzten segurtasuneko adituentzat, eskaneatze osoa egin behar izan gabe.

Builtwith.com web-orri batean erabiltzen diren teknologiak identifikatzeko aukera ematen duen lineako tresna bat da. Tresna honek erabilitako teknologiei buruzko informazio zehatza ematen du, baita estatistika erabilgarriak ere, hala nola trafikoa eta webgunearen ospea.

Ikusitako tresnak:

- [Whatweb](https://github.com/urbanadventurer/WhatWeb)
- [Wappalyzer](https://addons.mozilla.org/es/firefox/addon/wappalyzer/)
- [Builtwith](https://builtwith.com/)



---

Klase honetan, Wfuzz eta Gobuster tresnak erabiltzen ditugu Fuzzing aplikatzeko. Teknika hau web zerbitzari batean ezkutatuta dauden ibilbideak eta baliabideak aurkitzeko erabiltzen da, indar gordineko erasoen bidez. Asmo txarreko erasotzaileek zerbitzarira baimenik gabe sartzeko erabil ditzaketen ezkutuko baliabideak aurkitzea da helburua.

Wfuzz edukia deskubritzeko tresna bat eta datuak injektatzeko tresna bat da. Funtsean, web aplikazioetako kalteberatasunak probatzeko prozesuak automatizatzeko erabiltzen da.

Web aplikazio baten parametroetan eta direktorioetan indar gordineko erasoak egiteko aukera ematen du, dauden baliabideak identifikatzeko. Wfuzzen abantailetako bat da oso pertsonalizagarria dela eta hainbat proba-beharretara egokitu daitekeela. Wfuzzen desabantailetako batzuk bere komandoen sintaxia ulertzeko beharra dute, eta mantsoagoa izan daiteke edukia aurkitzeko beste tresna batzuekin alderatuta.

Bestalde, Gobuster edukia aurkitzeko tresna bat da, web-aplikazio batean ezkutuko fitxategiak eta direktorioak bilatzeko ere erabiltzen dena. Wfuzz bezala, Gobuster indar gordineko erasoetan oinarritzen da ezkutuko fitxategi eta direktorioak aurkitzeko. Gobusterren abantaila nagusietako bat abiadura da, ezaguna baita edukia aurkitzeko tresna azkarrenetako bat delako. Erabilerraza ere bada eta sintaxia sinplea da. Hala ere, Gobusterren desabantaila bat da agian ez dela Wfuzz bezain pertsonalizagarria.

Laburbilduz, Wfuzz eta Gobuster web-aplikazioetan kalteberatasun-probak egiteko tresna erabilgarriak dira, baina ikuspegian eta ezaugarrietan desberdintasunak dituzte. Bata edo bestea aukeratzea zure beharren eta lehentasun pertsonalen araberakoa izango da.

Jarraian, tresna hauetarako esteka emango dizugu:

- [Wfuzz](https://github.com/xmendez/wfuzz)
- [Gobuster](https://github.com/OJ/gobuster)


## Gobuster instalatu 

1. Klonatu repositorioa /opt karpetan [Gobuster](https://github.com/OJ/gobuster).

2. Instalatu go lenguaia konpilatzailea
    1. Deskargatu tarball https://go.dev/dl/go1.21.6.linux-amd64.tar.gz


```bash
curl -OL https://golang.org/dl/go1.21.6.linux-amd64.tar.gz
```

3. Deskonprimitu paketea

```bash
tar -C /usr/local -xvf go1.21.6.linux-amd64.tar.gz
```

4. Go routa ezarri

```bash
nano ~/.profile
```

Gehitu linea hau fitxategira

```bash
export PATH=$PATH:/usr/local/go/bin
```

5. Refresh profila

```bash
source ~/.profile
```

6. Ziurtatu bertsio `go version` idatziz