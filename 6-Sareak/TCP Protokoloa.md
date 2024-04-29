# TCP Protokoloa

- [TCP Protokoloa](#tcp-protokoloa)
  - [Garraio Protokoloa](#garraio-protokoloa)
  - [Portua](#portua)
  - [Bezero-zerbitzaria](#bezero-zerbitzaria)

## Garraio Protokoloa

Orain arte ikusitakoaren laburpena egingo dugu, eta, horrela, TCP protokoloa non egokitzen den ikusiko dugu.

- Zuzenean konektatuta dauden ordenagailuetarako, Ethernet bidez konekta gaitezke. Ordenagailuen helbide gisa MAC-a erabiliz.
- Ordenagailuak ez badaude zuzenean konektatuta, routerrak eta IP protokoloa behar ditugu. Ordenagailuen helbide gisa IP erailiz.
  - IP protokoloak hainbat arazo ditu:
    - Datuak nahasita irits daitezke
    - Datuak gal daitezke
    - Datuak bikoiztuta irits daitezke
    - Ez da zehazten helmugako ordenagailuaren zein prozesutara doazen datuak.
- IP protokoloarekin batera, IP protokoloari "laguntzen" dioten ARP eta ICMP protokoloak daude.
  
Zertarako balio du, orduan, TCP protokoloak? Jakina, IP protokoloak dituen arazoak konpontzeko. Beraz, hauek izango dira TCPren abantailak:
- Datuak ordenatuta iristen dira
- Datuak ez dira inoiz galtzen
- Datuak ez dira inoiz bikoiztuta iristen
- Datuak zein prozesutara bideratuko diren zehaztu daiteke.

TCP protokoloarekin batera, UDP izeneko beste bat dago, TCPren antzekoa. Bien artean garrantzitsuena TCP da. Eta TCPrako baliagarriak diren gauza asko UDPrako ere baliagarriak dira.

![alt text](image-19.png)

Goiko diagraman, ezagutzen ditugun protokolo guztiak eta horiek erabiltzen dituzten programak ikus ditzakegu. Ikus daitekeenez, TCPk eta UDPk, IPn protokoloa erabiliz lan egiten dute.

## Portua

Orain arte, ordenagailu batetik bestera komunikatzeko, datuen zati bat, jatorrizko ordenagailuaren IPa eta xede-ordenagailuaren IPa baino ez genituen behar. Baina horrekin ez da nahikoa. Pentsa dezagun gure mugikorrean. Mugikorrera datuak iristen zaizkigunean, zein aplikaziora doaz? Whatsapparako dira? Postarako? Web-nabigatzailerako? eta abar, eta abar. Beraz, datuak nora iristen diren ere zehaztu behar da, zer aplikaziorako diren jakiteko. Hori PUERTO izeneko zenbaki berri batekin egiten da. Zenbaki horrek adierazten du gure ordenagailuaren zein aplikaziotan entregatu behar diren datuak. Baita, portuaz gain, TCP edo UDP bidez doazen ere adierazi behar da. Beraz, konexioa ezartzeko, honako hau behar dugu:

- Erabili beharreko protokoloa: TCP edo UDP
- IP Jatorria eta Jatorrizko Portua
- Helmugako IP eta helmugako portua

Hori jakinda, ikus dezagun taula bat aplikazio batzuk erabiltzen dituzten portuen zenbakiekin:

| Aplikazioa | Portua | Protokoloa |
| --- | --- | --- |
| SSH | 22 | TCP |
| Serbitzari Web | 80 | TCP |
| Serbitzari Web | 443 | TCP |
| MySQL | 3306 | TCP |
| VoIP | 5060 | TCP |
| VoIP | 5060 | UDP |
| VoIP | 5004 | UDP |
| IPTV | 12000 | UDP |
| Minecraft | 25565 | TCP |
| BitTorrent | 6881 | TCP |
| BitTorrent | 6969 | TCP |


Portu "ofizialen" taula osoa, "portu aski ezagunak" deitzen da, eta [Wikipedian ikus dezakezu.](http://es.wikipedia.org/wiki/Anexo:N%C3%BAmeros_de_puerto)


⚠️*Portuaren kontzeptua da garatzaile batek ikasi behar duen gauzarik garrantzitsuenetako bat. Izan ere, sareko aplikazio bat programatzean, guk erabakitzen dugu zein portu erabiltzen duen gure aplikazioa.*
*Gainera, askok entzun duzuen bezala, askotan portuak ireki behar izaten dira.*

Ondo, baina ez da ahaztu momentuz sareei buruzko kontatutako guztia, **ordenagailu batean dagoen prozesu batetik** **beste prozesu batera** datuak bidaltzera bideratuta dagoela.


Adibidez:

- Web nabigatzaile batetik (Firefox bezala) Web zerbitzari batera (Apache bezala) eta alderantziz.
- SSH bezero batetik (putty gisa) SSH zerbitzari batera
- Posta-bezero batetik posta-zerbitzari batera.
- Minecraft bezero batetik Minecraf zerbitzari batera.


Bada, prozesu batek sistema eragileari esan behar dio protokolo batera, portu batera eta IP batera "konektatzen" dela (jakina, ekipoaren beraren IPetara mugatuta). Eta datuak bidaltzen edo jasotzen dituzunean, portu eta protokolo hori erabiliko duzu. Eta, gero, prozesuak datuak bidaliko ditu helmugako portu eta IPa dituen orgenagilu batera (helmugako protokoloa, jakina, jatorrikoaren berdina izango da).


                    TCP
    (IP, Portua) ----------> (IP, Portua)

    
                    UDP
    (IP, Portua) ----------> (IP, Portua)


- Garrantzitsua da nabarmentzea prozesu bakar bat (gauzatzen ari den programa bat) konekta daitekeela portu eta protokolo batera. Adibidez:
  - Javan programa bat egiten badugu eta TCP bidez 3306 portura konektatzen badugu, gero ezingo dugu MYSQL instalatu, MYSQL-k 3306 portua erabiltzen baitu TCP bidez.
  - Baina Javan programa bat egiten badugu eta UDP bidez 3306 portura konektatzen badugu, gero MYSQL instalatu ahal izango dugu, MYSQLk 3306 portua erabiltzen baitu TCP bidez.
- Baina prozesu bat bi portu konektatzea baimentzen da. Adibidez:
  - Javaren Web zerbitzaria, Tomcat izenekoa, 8080 portuan konektatuta dago nabigatzaileen eskaerak jasotzeko
  - Baina 8005 portuan ere konektatuta dago zerbitzaria berrabiarazten duten eskaerak jasotzeko

⚠️*Posible da Mysql eta aplikazio gehienen defektuzko portua aldatzea, baina ez da gomendagarria.*

## Bezero-zerbitzaria

Ikus dezagun orain xehetasun bat. Ziurtzat jotzen dugu edozein ordenagailu konekta daitekeela beste edozein ordenagailurekin. Baina benetan ez da horrela.

- Ethernet eta IP mailan, edozein ordenagailurekin konekta zaitezke, sistema eragileak berak jasotzen baititu datuak.
- TCP mailan, helmugako ordenagailuan konektatu nahi duzun portuan prozesu bat konektatutako badago baino ezin zara konektatu.
Ikus dezagun berriro lehen adibidea:
