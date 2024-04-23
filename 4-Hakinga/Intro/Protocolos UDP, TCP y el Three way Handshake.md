# TCP, UDP eta Three Way Handsakea

- [TCP, UDP eta Three Way Handsakea](#tcp-udp-eta-three-way-handsakea)
  - [Abatailak eta Desabantailak protokoloen artean](#abatailak-eta-desabantailak-protokoloen-artean)
  - [Portuak eta beren prokoloak](#portuak-eta-beren-prokoloak)
  - [TCP](#tcp)
  - [UDP](#udp)
  - [Three way handshake](#three-way-handshake)
    - [Behatu three way handshake Netcat eta Wireshar erabiliz](#behatu-three-way-handshake-netcat-eta-wireshar-erabiliz)

## Abatailak eta Desabantailak protokoloen artean

**TCP (Transmisioa Kontrolatzeko Protokoloa):**

**Abantailak:**
1.**Fidagarritasuna:** TCPk datuen entrega ordenatua eta fidagarria bermatzen du. Transmisioan paketeak galtzen badira, TCP arduratzen da paketeak transmititzeaz.
2.**Fluxu-kontrola:** TCPk fluxu-kontroleko mekanismoak inplementatzen ditu sarean pilaketa saihesteko eta hartzaileak datuak erritmo egokian prozesatu ahal izatea ziurtatzeko.
3.**Aitortzea eta ematea:** Aitortza-mekanismoak ematen ditu, igorleak jakin dezan zer datu jaso diren behar bezala eta galdutakoak eman ahal izan ditzan.

**Desabantailak:**
1.**Gainkarga handiagoa:** TCPk protokolo-gainkarga handiagoa du UDPrekin alderatuta, konexioak, fluxu-kontrola eta emankizunak ezarri eta mantentzeko beharragatik.
2.**Latentzia handiagoa:** Fluxua entregatu eta kontrolatzeko berme-mekanismoak direla eta, TCPk nolabaiteko latentzia sar dezake datuen transmisioan.


**UDP (User Datagram Protocol):**


**Abantailak:**
1.**Gainkarga txikiagoa:** UDPk protokolo-gainkarga txikiagoa du, ez baitu konexiorik ezarri edo mantendu behar, eta ez du fluxu-kontrolik edo emanaldirik inplementatzen.
2.**Latentzia txikiagoa:** TCP mekanismo gehigarriak ez dituenez, UDPk latentzia txikiagoa eskain dezake datuen transmisioan.
3.**Datuak denbora errealean transmititzea:** Egokia da datuak denbora errealean azkar transmititzea eskatzen duten aplikazioetarako, hala nola audio- eta bideo-transmisioetarako.

**Desabantailak:**
1.**Ez du entrega bermatzen:** UDPk ez du bermatzen datuak entregatuko direnik, ezta zein ordenatan jasoko diren ere. Transmisioan paketeak gal daitezke.
2.**Fluxu-kontrolik gabe:** Ez dago fluxua kontrolatzeko mekanismorik UDPn, eta horrek esan nahi du datuak ahalik eta abiadura handienean bidaltzen direla, eta horrek auto-pilaketa eragin dezake sarean.
3.**Ez dago ez aintzatespenik ez emanaldirik:** Paketeak galtzen badira, ez dago mekanismo automatikorik horiek transmititzeko, eta erabiltzaileak berreskuratze-mekanismo propioak inplementatu behar ditu, beharrezkoa bada.


Laburbilduz, TCP egokiagoa da fidagarritasuna eta entrega-bermea eskatzen duten aplikazioetarako, eta UDP, berriz, hobea da latentzia kritikoa den eta nolabaiteko datu-galera onar daitekeen egoeretan. TCP eta UDPren arteko aukeraketa aplikazioaren baldintza espezifikoen araberakoa da.


![Alt text](<../Images/Pasted image 20231211234056.png>)

## Portuak eta beren prokoloak


Garrantzitsua da *nmap* tresnarekin atakak eskaneatzeko makina bat zer ataka erabiltzen ari den eta zer protokolorekin erabiltzen ari den jakitea

TCP
----------------------
- 21  -> FTP
- 22 -> SSH
- 23 -> (Telnet)
- 25 -> (SMTP)
- 53 -> (DNS)
- 80 -> HTTP
- 443 -> HTTPS
- 110  -> (POP3)
- 139, 445 -> (SMB)
- 4143 -> (IMAP)

UDP
------------------------
- 53 -> (DNS)
- 69  -> (TFTP)
- 161 -> (SNMP)



## Three way handshake

Oharra: Ack dator Acknowledge-etik

![Alt text](<../Images/Pasted image 20231211233951.png>)


### Behatu three way handshake Netcat eta Wireshar erabiliz

NetCat tresna erabiliz entzuten dugu. Tresna hori oso erabilgarria da datuak tre por tcp edo udp bidez transmititzeko. Versatila da, eta entzuteko probak egiteko erabil daiteke, orain egingo dugun bezala, baina baita tunelak sortzeko ere, urruneko shell bat irekitzeko, atakak birbidaltzeko eta ssl konexioak egiteko, besteak beste.

Entzun

![Alt text](<../Images/Pasted image 20231212004348.png>)

Entzuten ari garen portu honen bidez konektatzen saiatu

![Alt text](<../Images/Pasted image 20231212000355.png>)


Wireshark -en loopback interfazea atzitu eta tcp bidez iragazi

![Alt text](<../Images/Pasted image 20231212004339.png>)
