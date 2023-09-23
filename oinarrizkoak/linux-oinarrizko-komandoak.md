Ongi, hemen dituzu Linux komando oinarrizkoak, Euskarara itzulita:

### Fitxategi Eragiketak

- `ls`: Zerrendatu uneko direktorioan dauden fitxategiak eta direktorioak.
- `cd [direktorioa]`: Aldatu zehaztutako direktoriora.
- `pwd`: Inprimatu uneko direktorioa.
- `touch [fitxategi-izena]`: Sortu izen hori duen fitxategi hutsa.
- `cp [jatorria] [helmuga]`: Kopiatu fitxategiak edo direktorioak.
- `mv [jatorria] [helmuga]`: Mugitu fitxategiak edo direktorioak.
- `rm [fitxategi-izena]`: Kendu fitxategia.
- `rmdir [direktorioa]`: Kendu direktorio hutsa.
- `mkdir [direktorioa]`: Sortu direktorio berria.

### Testu Eragiketak

- `cat [fitxategi-izena]`: Erakutsi fitxategiaren edukia.
- `more [fitxategi-izena]`: Erakutsi fitxategiaren edukia pantaila bakoitzeko.
- `less [fitxategi-izena]`: Antzekoa `more`-ri, baina atzera nabigazioa ahalbidetzen du.
- `nano [fitxategi-izena]`: Ireki fitxategia Nano testu editorean.
- `vi [fitxategi-izena]`: Ireki fitxategia Vi testu editorean.
- `echo [testua]`: Erakutsi testua edo irteera fitxategi batean.

### Sistema Informazioa

- `uname -a`: Erakutsi sistema informazioa.
- `df`: Erakutsi diskoaren erabilera.
- `du`: Erakutsi fitxategi eta direktorioen espazio erabilera.
- `top`: Erakutsi sistema-prozesuak eta baliabideen erabilera.
- `ps`: Erakutsi une honetan aktibo dauden prozesuak.

### Sare Eragiketak

- `ping [ostalari-izena/IP]`: Froga sare-konektibitatea ostalari batekin.
- `ifconfig` edo `ip a`: Erakutsi sare konfigurazioa.
- `ssh [erabiltzaile-izena]@[ostalari-izena/IP]`: Konektatu urruneko sistemara SSH bidez.
- `scp [jatorria] [helmuga]`: Kopiatu fitxategiak SSH bidez seguruan.

### Fitxategi Baimenak

- `chmod [baimenak] [fitxategia]`: Aldatu fitxategi baimenak.
- `chown [jabea]:[taldea] [fitxategia]`: Aldatu fitxategiaren jabetza.
- `chgrp [taldea] [fitxategia]`: Aldatu fitxategiaren talde jabetza.

### Pakete Kudeaketa (Debian/Ubuntu)

- `apt-get update`: Eguneratu pakete zerrendak.
- `apt-get install [paketea]`: Instalatu paketea.
- `apt-get remove [paketea]`: Kendu paketea.

### Pakete Kudeaketa (Red Hat/Fedora)

- `yum update`: Eguneratu pakete guztiak.
- `yum install [paketea]`: Instalatu paketea.
- `yum remove [paketea]`: Kendu paketea.

### Besteak

- `man [komandoa]`: Erakutsi komando baten eskuliburua.
- `history`: Erakutsi komando historia.
- `clear`: Garbitu terminalaren pantaila.

Hau da oinarrizko ikuspegi bat, eta komando eta aukera askoz gehiago daude. Zure galderak edo azalpen gehiago behar badituzu, esan mesedez.