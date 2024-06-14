
![alt text](image-27.png)

# Azterketa Baimenak eta Scriptak

- Izen Abizenak:
- Nota: 


#### 1. Zein baimenari dagokio? (+1 / -0,33)
    a) 4 = read, 2 = write, 1 = execute
    b) 2 = read, 4 = write, 1 = execute
    c) 2 = read, 1 = write, 4 = execute
    d) 1 = read, 2 = write, 4 = execute
    
---

#### 2. Nola gehitu exekuzio baimena jabearentzat baimenak modu sinbolikoan? (+1 / -0,33)
    a) chmod u+x file.txt
    b) chmod x+u file.txt
    c) chmod +u+x file.txt
    d) chmod u+x+ file.txt
---

#### 3. Nola gehitu sticky bita fitxategi edo karpeta bati modu oktalean? (+1 / -0,33)
    a) chmod +t file.txt
    b) chmod 1755 file.txt
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

#### 7. Zer adierazten du `-c` ezaugarriak fitxategiari ematen dion? (+1 / -0,33)
    a) Fitxategia konprimituta gordetzen da
    b) Fitxategia ezabatzean, zeroekin berridatzi egiten da
    c) Fitxategia ezabatzean, okupatzen zen memoria ezabatzen da
    d) Fitxategiari datuak bakarrik gehitu ahal zaizkio, aurretin zegoen edukia aldatu gabe
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

#### 11. Zein da aldagaiare erabilera zuzena? (+1 / -0,33)
    a) echo "nire ALDAGAIA"
    b) echo "nire -ALDAGAIA"
    c) echo "nire $ALDAGAIA"
    d) echo "nire #ALDAGAIA"

---

#### 12.  Hurrengo scripta, params.sh izena du. 

```bash
#!/bin/bash

for param in "$@"
do    
    if [ "$param" == "-r" ]; then
        echo "recursive selected"
    elif [ "$param"  == "-l" ]; then
        echo "list selected"
    elif [ "$param"  == "-a" ]; then
        echo "all selected"
    else
        echo "unknown param"
    fi
done
```

##### a) Nola exekutatu beharko zenuke hurrengo irteera lortzeko? (+1)

```bash
list selected
unknown param
```

##### b) Nola exekutatu beharko zenuke hurrengo irteera lortzeko? (+1)

```bash
recursive selected
unknown param
list selected
all selected
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

##### a. Zer idatzi beharko luke erabiltzailea terminalean `lainoa` ikusteko? (+0.5)

##### b. Zer idatzi beharko luke erabiltzailea terminalean `tximista` ikusteko? (+0.5)

##### c. Zer idatzi beharko luke erabiltzailea terminalean `lainoa` ikusteko?  (+0.5)

##### c. Zer idatzi beharko luke erabiltzailea terminalean `eguzkia` ikusteko?  (+0.5)

--- 

#### 14. Hurrengo scripta izanda:

```bash
#!/bin/bash

ALDAGAIA=2

while [ "$ALDAGAIA" -lt 7 ] ; do
    echo "aldagaiairen balioa: $ALDAGAIA"
    ALDAGAIA = ALDAGAIA + 1
done
```

##### a. Zein izango da scriptaren irteera? (+1.5)