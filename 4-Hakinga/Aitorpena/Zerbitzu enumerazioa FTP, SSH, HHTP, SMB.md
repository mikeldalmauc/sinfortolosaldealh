

Mota honetan, fitxategiak transferitzeko protokoloari (FTP) buruz hitz egingo dugu, eta horri buruzko azterketa nola aplikatu informazioa biltzeko.

FTP protokolo asko erabiltzen da fitxategiak sareetara transferitzeko. FTP zerbitzuaren zerrendatzeak informazio garrantzitsua biltzea dakar, hala nola FTP zerbitzariaren bertsioa, fitxategien baimenen konfigurazioa, erabiltzaileak eta pasahitzak (indar gordineko erasoen edo guessing-en bidez), besteak beste.

Jarraian, gela honetan ukitzen dugun lehen proiekturako esteka duzue:

Docker-FTP-Server: https://github.com/garethflowers/docker-ftp-server

Deskargatzen dugun lehen proiekturako erabiltzen dugun tresnetako bat "Hydra" da. Hydra kode irekiko sartze-probak egiteko tresna bat da, eta pasahitzak babestutako sistemen eta zerbitzuen aurka indar gordineko erasoak egiteko erabiltzen da. Tresna oso pertsonalizagarria da eta sareko protokolo-sorta zabala onartzen du, besteak beste, HTTP, FTP, SSH, Telnet eta SMTP.

FTPrako erabiltzaile gonbidatuak autentifikatzea ahalbidetzen duen edukiontzia hedatzeko erabiltzen ditugun proiektuen artean hurrengoa "metabrainz" en "docker-anon-ftp" proiektua da. Jarraian, proiekturako esteka duzue:

Docker-ANON-FTP: https://github.com/metabrainz/docker-anon-ftp

```bash 
docker run -d -p 20-21:20-21 -p 65500-65515:65500-65515 -v /tmp:/var/ftp:ro metabrainz/docker-anon-ftp
```

## Rock you pasahitz dikzionarioa deskargatu 


https://github.com/zacheller/rockyou

```bash
cd
git clone https://github.com/zacheller/rockyou
cd rockyou
mkdir /usr/share/wordlists
tar xC /usr/share/wordlists -f rockyou.txt.tar.gz
```
