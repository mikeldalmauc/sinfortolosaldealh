# DNS, DHCP, DMZ, NAT eta Firewallak 

- [DNS, DHCP, DMZ, NAT eta Firewallak](#dns-dhcp-dmz-nat-eta-firewallak)
  - [DNS](#dns)
  - [DHCP](#dhcp)


## DNS

Ordu arte beti egiten ditugu probak IPak erabiliz, baina IP bat ez da oso erosoa gizaki batek gogoratzeko. Horregatik, Host baten domeinu-izena sortzen da, gizaki batentzako gogoratze-izen sinple bat besterik ez dena. Eta domeinu-izen bat IP bati lotzen diona. 

Domeinuen adibide batzuk:
- www.google.es
- tolosaldea.hezkuntza.net/

Domeinu-izen batek IP bakarra izan dezake; izan ere, bat baino gehiago balitu, ez genuke jakingo zer erabili, baina IP berak hainbat domeinu izan ditzake. Hau da, Host berak domeinu-izen bat baino gehiago izan ditzake. Hori normala da, ordenagailu berean domeinu desberdinetako orriak jartzen baitira kostu ekonomikoak aurrezteko.

Horren ondorioz, DNS zerbitzari *"prozesuak"* sortu ziren. DNS zerbitzari bat domeinu-izena bidaltzen diogun zerbitzari bat da, eta bere IPa itzultzen digu.

Informazio gehiago:
- [DNS](https://es.wikipedia.org/wiki/Sistema_de_nombres_de_dominio)
- [Como funciona internet dns](https://www.xatakamovil.com/conectividad/como-funciona-internet-dns)

DNS protokoloa oso erraza da, UDP bidez bidaltzen da gure DNS zerbitzariaren 53 portura domeinu-izen bat eta IPa itzultzen digu. Ez gara sartuko DNS protokoloaren formatuan. Xehetasun bat da, lehenik eta behin, gure DNS zerbitzariaren IP jakin behar dugu. Beraz, eskuz ezarri behar da, lotura-atearekin egiten genuen bezala.

Linux erabiltzen ari den DNS zerbitzariak jakiteko, `systemd-resolve --status`:

```bash
Global
          DNSSEC NTA: 10.in-addr.arpa
                      16.172.in-addr.arpa
                      168.192.in-addr.arpa
                      17.172.in-addr.arpa
                      18.172.in-addr.arpa
                      19.172.in-addr.arpa
                      20.172.in-addr.arpa
                      21.172.in-addr.arpa
                      22.172.in-addr.arpa
                      23.172.in-addr.arpa
                      24.172.in-addr.arpa
                      25.172.in-addr.arpa
                      26.172.in-addr.arpa
                      27.172.in-addr.arpa
                      28.172.in-addr.arpa
                      29.172.in-addr.arpa
                      30.172.in-addr.arpa
                      31.172.in-addr.arpa
                      corp
                      d.f.ip6.arpa
                      home
                      internal
                      intranet
                      lan
                      local
                      private
                      test
 
Link 3 (docker0)
      Current Scopes: none
       LLMNR setting: yes
MulticastDNS setting: no
      DNSSEC setting: no
    DNSSEC supported: no
 
Link 2 (enp2s0)
      Current Scopes: DNS
       LLMNR setting: yes
MulticastDNS setting: no
      DNSSEC setting: no
    DNSSEC supported: no
         DNS Servers: 8.8.8.8
                      8.8.4.4
          DNS Domain: ~.
```

Ikusten dugu azken lerroetan "DNS Servers" agertzen dela, eta ikusten dugu bi DNS daudela, zeinen IPak "8.8.8.8" eta "8.8.4.4" diren.

Ez dugu ikusiko nola ezarri DNS zerbitzariak Ubuntun, baina ikuspenen bat behar baduzue, gogoratu **netplan** izeneko tresna bat erabiltzen dela.

Guretzat DNS eskaera bat "dig" agindua domeinu izenarekin erabiltzen da.

```bash
logongas@beren:~$ dig www.fpmislata.com +short
87.98.231.18
```

Pentsa dezakegu "dig" agindua ez dela oso erabilgarria, baina batzuetan sare-arazoak izaten dira, eta DNSek funtzionatzen duten jakiteko, agindu hori erabil dezakegu.

Batzuetan, gure ordenagailuan DNS zerbitzari bat izatea interesatzen zaigu, adibidez, gure XBoxeko IPra konektatzen bagara, edo SmartTVra, etab. Horrela, IP bidez sartu beharrean, izenaren bidez sar gaitezke. DNS zerbitzari oso bat muntatzea, konplexua ez bada ere, irakasgaiaren helburutik haratago dago. Baina IP bat domeinu-izen batekin lotzeko oso modu erraza dago. **"/etc/hosts" **izeneko fitxategi bat IParekin eta domeinu-izenarekin betetzea besterik ez da.

```bash
logongas@beren:~$ cat /etc/hosts
127.0.0.1   localhost
192.168.1.110   beren
 
# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```
Hor ikusten denez, "127.0.0.1" erabili beharrean, domino "localhost" izena erabil daiteke, baita "beren" domino izena ere, 192.168.1.106 IPari lotua.

Beraz, gure XBox-ak 192.168.1.67 IP badu, adibidez, "/etc/hosts" fitxategiari honako hau gehitu beharko litzaioke:

```bash
192.168.1.67 xbox
```
Eta xbox izena erabil genezake. Teknika horren alde txarra da "/ etc/hosts" fitxategia aldatu dugun ordenagailutik bakarrik funtzionatzen duela; beraz, mugikor batetik ezingo genuke "xbox" izena erabili. Beraz, ez da zoragarria, baina arazoren batetik ateratzeko, balio dezake.

## DHCP

Zergatik da garrantzitsua DHCP zerbitzaria? Gure etxeko routerrean sartu eta konfigurazioa alda dezakegulako.

Hurrengo pantailan router baten barne-sareko IParen konfigurazioa ikusten da:
