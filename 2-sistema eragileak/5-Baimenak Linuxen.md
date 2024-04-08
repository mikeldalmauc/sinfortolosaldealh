# Baimenak Linux

- [Baimenak Linux](#baimenak-linux)
  - [Fitxategi eta direktorioen baimenak](#fitxategi-eta-direktorioen-baimenak)
    - [Baimen taldeak](#baimen-taldeak)
    - [Baimenak esleitzen modu sinbolikoan](#baimenak-esleitzen-modu-sinbolikoan)
    - [Baimenak modu oktalean](#baimenak-modu-oktalean)
  - [Sticky bit baimena](#sticky-bit-baimena)

## Fitxategi eta direktorioen baimenak

Fitxategi eta direkotorioen baimenak hurrengo aginduarekin ikusi ditzakegu.

```bash
ls -al
```

![Resultado del agindu ls -a](image-7.png)

### Baimen taldeak

- **Jabea (user)**: Fitxategi bat sortzen dugunean, sortzailea jabea izango da defektuz.
- **Talde (group)**: Fitxategi baten jabetza talde bati ere bai dagokio.
- **Besteak (other)**: Jabeak edo taldekideak ez direnak

![alt text](image-8.png)

### Baimenak esleitzen modu sinbolikoan


Bai, hemen dituzu eskatutako informazioa Linuxen baimen motak eta chmod komandoaren erabilera buruz:

Linuxen, fitxategi eta karpeta batzuek hiru baimen mota dituzte: irakurketa (r), idazketa (w) eta exekuzioa (x). Baimen hauek hiru entitateetara aplika daitezke: fitxategiaren jabea, fitxategiak pertenitzen dion taldea eta beste erabiltzaileak.

`chmod` komandoa fitxategi eta karpetaen baimenak aldatzeko erabiltzen da Linuxen. Hemen duzu nola erabiliaren adibide bat:

```bash
chmod baimenak fitxategia_edo_karpeta
```

Non "baimenak" diren baimenak ordezkatzen dituzten letrak edo zenbakiak eta "fitxategia_edo_karpeta" fitxategi edo karpeta izena den.

Adibidez, jabeari (user) exekuzio baimena horrela eman ahal diogu.
```bash
chmod u+x froga.txt
```

Honela, taldeari eta besteei exekuzio eta idazteko baimenak emago dizkiegu.
```bash
chmod go+wx froga.txt
```

Besteei, irakurtzeko baimena horrela kendu diezaiokegu.
```bash
chmod o-r froga.txt
```

### Baimenak modu oktalean

- 0 = 000 = --- = baimanrik gabe
- 1 = 001 = --x = exekuzio baimena
- 2 = 010 = -w- = idazteko baimena
- 3 = 011 = -wx = idazteko eta exetuatzeko baimena
- 4 = 100 = r-- = irakurtzeko baimena
- 5 = 101 = r-x = irakurtzeko eta exekutatzeko baimena
- 6 = 110 = rw- = irakurtzeko eta idazteko baimena
- 7 = 111 = rwx = baimean guztiak

Adibidez baimen guztiak kentzeko
```bash
chmod 000 froga.txt
```

Baimen guztiak gehitzeko 
```bash
chmod 777 froga.txt
```

Erabiltzaileari baimen guztiak emateko eta besteei edo taldekiedei irakurtze eta exekuzio baimenak emateko.
```bash
chmod 755 froga.txt
```

## Sticky bit baimena

Sticky bita daukan fitxategi edo direktorio bat bakarrik jabea edo rootek aldatu ahal dio izena edo ezabatu ahal du.

Stiky bita gehitzeko
```bash
chmod +t froga.txt
```

![alt text](image-9.png)

