# IPv4 protokoloa

## IP protokoloa

Imajinatu Internet hasiberri bat Espainian. Router bakoitza autonomia-erkidego bakoitzeko Espainiako unibertsitate batean dago, eta gela bakarra dago router horri konektatuta. Routerren arteko lotura horrela geratuko litzateke.

![alt text](image-9.png)

Erreparatu munduari konektatzeko irteera bat dagoela Bartzelonako routerretik Parisera (urdinez margotuta).

| Jatorria   | Helmuga        | Jauziak                                                                                 | Jauzi kopurua |
|----------|----------------|----------------------------------------------------------------------------------------|-----------|
| Valencia | Castilla-Leon | Valencia, Madrid, Castilla-Leon                                                      | 3         |
| Valencia | Castilla-Leon | Valencia, Aragón, País Vasco, Castilla-Leon                                           | 4         |
| Valencia | País Vasco    | Valencia, Madrid, País Vasco                                                          | 3         |
| Valencia | País Vasco    | Valencia, Aragón, País Vasco                                                          | 3         |
| Valencia | Aragón        | Valencia, Aragón                                                                      | 2         |
| Valencia | Aragón        | Valencia, Cataluña, Aragón                                                            | 3         |
| Valencia | Cataluña      | Valencia, Aragón, Cataluña                                                            | 3         |
| Valencia | Cataluña      | Valencia, Cataluña                                                                    | 2         |
| Valencia | Cataluña      | Valencia, Madrid, Pais Vasco, Aragón, Cataluña                                        | 5         |
| Valencia | Murcia        | Valencia, Murcia                                                                      | 2         |
| Valencia | Murcia        | Valencia, Madrid, Sevilla, Murcia                                                      | 4         |
| Valencia | Murcia        | Valencia, Cataluña, Aragón, Pais Vasco, Castilla-Leon, Madrid, Sevilla, Murcia        | 8         |


Jauziei routerrei deitzen zaie, nondik igarotzen den, jatorritik helmuga iristeko.

Ikus dezakegunez, bide asko daude jatorrizko routerretik helmugako routerrera iristeko. Zein aukeratzen duzu routerra? Hainbat estrategia daude:

- Aukeratu jauzi gutxien dituen bidea.
- Aukeratu banda-zabalera onena duen ibilbidea. Agian, Kataluniara iristeko hobe da Aragoitik barrena egitea, banda-zabalera hobea baitago Valentzia eta Aragoi artean eta Aragoi eta Katalunia artean, Valentzia eta Katalunia artean zuzenean baino.
- Banda-zabalera, atzerapena, karga, fidagarritasuna: aukera bakoitzaren ezaugarri gehiago nahastea, ibilbiderik onena aukeratzeko.

Benetan ez zaigu interesatzen jakitea routerrak nola aukeratzen duen ibilbide onena. Garrantzitsuena da datagrama bakoitzerako routerrak ibilbide onena zein den aukeratzen duela, baina hurrengo datagramarekin beste ibilbide bat aukera dezakeela, nahiz eta helmuga berera joan.

### Adibidea
Jarrai dezagun Valentziako ordenagailu batetik Kataluniako beste ordenagailu batera mezu bat bidaltzearen adibidearekin. Mezu horrek 2 datagrama ditu, Datagrama A eta Datagrama B. deituko diegu eta gerta daitekeenaren zenbait kasu ikusiko ditugu.


1. kasua:

- Gure ordenagailutik bi datagrama sortzen ditugu
- Gure ordenagailuak **A Datagrama** *Valentziako* routerrera bidaltzen du
- *Valentziako* routerrak *Kataluniarako* bideean trafiko handia dagoela ikusten du, beraz, *Zaragozako* routerrera bidaltzen du.
- *Zaragozako* routerrak **A datagrama** jasotzen du, bere RAM memorian gordetzen du eta, denbora duenean, berriz bidaliko du
- Gure ordenagailuak **B Datagrama** *Valentziako* routerrera bidaltzen du
- *Valentziako* routerrak ikusten du jada ez dagoela pilaketarik Kataluniarako bidean, beraz, **B Datagrama** bidaltzen du zuzenean *Kataluniako* routerrera.
- *Kataluniako* routerrak **B Datagrama** jasotzen du *Valentziatik* eta *Kataluniara* bidaltzen du helmuga ordenagailura
- *Zaragozako* routerrak **A Datagrama** *Kataluniako* routerrera bidali du
- *Kataluniako* routerrak **A Datagrama** jasotzen du *Zaragozatik* eta helmuga ordenagailura bidaltzen du
- Zer gertatu da? Lehenengo **B Datagrama** heldu da eta gero **A Datagrama**. Laburbilduz: Datagramak nahasita irits daitezke.


2. kasua:

- Gure ordenagailutik bi datagrama sortzen ditugu
- Gure ordenagailuak **A Datagrama** *Valentziako* routerrera bidaltzen du
- *Valentziako* routerrak *Kataluniarako* bide zuzenean trafiko handia dagoela ikusten du, beraz, *Zaragozako* bidaltzen du.
- *Zaragozako* routerrak **A datagrama** jasotzen du, bere RAMean gordetzen du eta, denbora duenean, berriz bidaliko du
- Gure ordenagailuak **B Datagrama** *Valentziako* routerrera bidaltzen du
- *Valentziako* routerrak ikusten du jada ez dagoela pilaketarik *Kataluniarako* bidean, beraz, Datagrama B bidaltzen du zuzenean *Kataluniako* routerrera.
- *Kataluniako* routerrak **B Datagrama** jasotzen du *Valentziatik* eta *Kataluniara* bidaltzen du ordenagailura
- Txartel-bideratzaileak, **B Datagrama** *Kataluniara* birbidali aurretik, akats bat du eta berriz hasten da.
- *Zaragozako* routerra berriz hasi ondoren, ez du **A datagrama** bidaltzen, **A datagrama** RAMen biltegiratuta zegoelako eta berriz hastean galdu egin delako.
- Zer gertatu da? *Zaragozako* routerrak Datagrama galdu duela A. Laburbilduz: Datagramak gal daitezke

3. kasua:

- Gure ordenagailutik bi datagrama sortzen ditugu
- Gure ordenagailuak **A Datagrama** Valentziako routerrera bidaltzen du
- Valentziako routerrak *Kataluniarako* bide zuzenean trafiko handia dagoela ikusten du, beraz, Zarbonatik bidaltzen du.
- Zarbonako routerrak **A Datagrama** jasotzen du, bere Disko gogorrean gordetzen du eta denbora duenean berriz bidaliko du
- Gure ordenagailuak Datagrama B Valentziako routerrera bidaltzen du
- Valentziako routerrak ikusten du jada ez dagoela pilaketarik Kataluniarako bidean, beraz, Datagrama B bidaltzen du zuzenean Kataluniako routerrera.
- Kataluniako routerrak Datagrama B jasotzen du Valentziatik eta Kataluniara bidaltzen du ordenagailura
- Txartelezko routerrak B Datagrama bidaltzen du Kataluniara, baina bere disko gogorretik ezabatu aurretik, akats bat du eta berriz hasten da.
- Kataluniako routerrak A Datagrama jasotzen du Zaragozatik eta Kataluniara bidaltzen du ordenagailura
- Zarbonaren routerra berriz hasitakoan, berriro bidaltzen du Datagrama B, oraindik bere disko gogorrean gordeta baitzegoen.
- Kataluniako routerrak A Datagrama jasotzen du Zaragozatik eta Kataluniara bidaltzen du ordenagailura
- Zer gertatu da? Bada, Zaragozako routerrak bi aldiz bidali duela Datagrama A. Laburbilduz: Datagramak bikoiztuta irits daitezke.
