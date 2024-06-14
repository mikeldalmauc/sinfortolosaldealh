
![alt text](image-27.png)

# Azterketa Baimenak eta Scriptak

- Izen Abizenak:
- Nota: 


#### 1. Zer esan nahi fitxategi batek 755 baimena badu? (+1)
    
    
---

#### 2. Nola gehitu idazteko baimena taldearentzat modu sinbolikoan? (+1 / -0,33)
    a) chmod g+w file.txt
    b) chmod w+g file.txt
    c) chmod +u+w file.txt
    d) chmod u+w+ file.txt
---

#### 3. Nola gehitu sticky bita fitxategi edo karpeta bati? (+1 / -0,33)
    a) chmod +t file.txt
    b) chmod +c file.txt
    c) chmod u+s file.txt
    d) chmod +s file.txt
---

#### 4. Demagun hurrengo fitxategiak:

![alt text](image-26.png)

##### 1. Exekuta dezake mikel erabiltzaileak ariketa1.sh scripta? (+0.5/ -0,5)
##### 2. Exekuta dezake root erabiltzaieleak ariketa2.sh scripta? (+0.5/ -0,5)
##### 3. Zein da ariketa1.sh fitxategiaren taldea eta ownerra? (+0.5/ -0,5)
---

#### 5. Sticky bitari buruz, zein da egia? (+1 / -0,33)
    a) Jabeak soilik aldatu edo ezabatu dezake fitxategia
    b) Taldeko erabiltzaileek soilik aldatu dezakete fitxategia
    c) Root-ek soilik aldatu edo ezabatu dezake fitxategia
    d) Guztiak aldatu edo ezabatu dezakete fitxategia
---

#### 6. Zertarako erabiltzen da SUID baimena? (+1 / -0,33)
    a) Erabiltzaile guztiek fitxategiaren exekuzio baimenak izango dituzte
    b) Erabiltzaile guztiek fitxategiaren idazketa baimenak izango dituzte
    c) Sortzaileak soilik fitxategiaren exekuzio baimenak izango ditu
    d) Fitxategia, sortzailearen baimenekin exekutatuko da
---

#### 7. Zer adierazten du `-i` ezaugarriak fitxategiari ematen dion? (+1 / -0,33)
    a) Fitxategia konprimituta gordetzen da
    b) Fitxategia ezabatzean, zeroekin berridatzi egiten da
    c) Fitxategia ezabatzean, okupatzen zen memoria ezabatzen da
    d) Fitxategia inmutablea izango da, inork ezin izango du aldatuko
---

#### 8. Zer adierazten du `-u` ezaugarriak fitxategiari ematen dion? (+1 / -0,33)
    a) Fitxategia konprimituta gordetzen da
    b) Fitxategia ezabatzean, zeroekin berridatzi egiten da
    c) Fitxategia ezabatzean, datuak berreskura daitezke gero
    d) Fitxategiari datuak bakarrik gehitu ahal zaizkio, aurretin zegoen edukia aldatu gabe
---

#### 9.  Zer adierazten du `-a` ezaugarriak fitxategiari ematen dion? (+1 / -0,33)
    a) Fitxategia konprimituta gordetzen da
    b) Fitxategia ezabatzean, zeroekin berridatzi egiten da
    c) Fitxategia ezabatzean, okupatzen zen memoria ezabatzen da
    d) Fitxategiari datuak bakarrik gehitu ahal zaizkio, aurretin zegoen edukia aldatu gabe
---

#### 10.  Nola ezartzen da aldagai baten balioa erabiltzaileak sartzen dituen datoekin? (+1 / -0,33)
    a) read ALDAGAIA
    b) echo \$ALDAGAIA
    c) read "ALDAGAIA"
    d) read $ALDAGAIA

---

#### 11. Jarri hurrengo baimenak modu oktalean? (+1.5)
  - r--------
  - --------x
  - rwsr-xr-x

---

#### 12.  Hurrengo scripta, params.sh izena du. 

```bash
#!/bin/bash

for param in "$@"
do    
    if [ "$param" == "-s" ]; then
        echo "single selected"
    elif [ "$param"  == "-la" ]; then
        echo "list all selected"
    elif [ "$param"  == "-v" ]; then
        echo "vervose selected"
    else
        echo "unknown param"
    fi
done
```

##### a) Nola exekutatu beharko zenuke hurrengo irteera lortzeko? (+1)

```bash
unknown param
verbose selected
```

##### b) Nola exekutatu beharko zenuke hurrengo irteera lortzeko? (+1)

```bash
list all selected
unknown param
single selected
```
---

#### 13.  Hurrengo scripta izanda:
```bash
#!/bin/bash

read -r ALDAGAIA

if [ "$ALDAGAIA" -lt 5 ]; then
    echo "tximista"
else 
    if [ "$ALDAGAIA" -eq 7 ]; then
        echo "trumoia"
    elif [ "$ALDAGAIA" -gt 6 ]; then
        echo "lainoa"
    else
        echo "eguzkia"
    fi
fi
```

##### a. Zer idatzi beharko luke erabiltzailea terminalean `trumoia` ikusteko? (+0.5)

##### b. Zer idatzi beharko luke erabiltzailea terminalean `tximista` ikusteko? (+0.5)

##### c. Zer idatzi beharko luke erabiltzailea terminalean `lainoa` ikusteko?  (+0.5)

##### c. Zer idatzi beharko luke erabiltzailea terminalean `eguzkia` ikusteko?  (+0.5)

--- 

#### 14. Hurrengo scripta izanda:

```bash
#!/bin/bash

ALDAGAIA=2

while [ "$ALDAGAIA" -lt 6 ] ; do
    echo "aldagaiairen balioa: $ALDAGAIA"
    ALDAGAIA = ALDAGAIA + 2
done
```

##### a. Zein izango da scriptaren irteera? (+1.5)