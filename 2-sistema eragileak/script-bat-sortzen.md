
- [Prestaketa](#prestaketa)
  - [Ariketa 1: Nabigazio Basikoa](#ariketa-1-nabigazio-basikoa)
  - [Ariketa 2: Fitxategiak Sortu eta Editatu](#ariketa-2-fitxategiak-sortu-eta-editatu)
  - [Ariketa 3: Baimenak Kudeatu](#ariketa-3-baimenak-kudeatu)
  - [Ariketa 4: Fitxategiak Kopiatu eta Mugitu](#ariketa-4-fitxategiak-kopiatu-eta-mugitu)
  - [Ariketa 5: Erabiltzaile Direktorioa eta Baimenak Konfiguratzeko Scripta Sortu](#ariketa-5-erabiltzaile-direktorioa-eta-baimenak-konfiguratzeko-scripta-sortu)
- [Eginkizuna](#eginkizuna)
  - [Ebazpena](#ebazpena)


# Prestaketa

1. **Docker instalatu**: Docker ez baduzu oraindik instalatuta, [hemen](https://www.docker.com/products/docker-desktop) deskargatu eta instalatu dezakezu.

2. **Ubuntu irudia jaitsi eta kontainer bat sortu**:
    ```bash
    docker pull ubuntu:latest
    docker run -it ubuntu:latest /bin/bash
    ```

## Ariketa 1: Nabigazio Basikoa

1. **Helburua**: Direktorioen artean nabigatzen ikasi.
2. **Komandoak**: `ls`, `cd`, `pwd`

    ```bash
    ls  # Fitxategiak eta direktorioak zerrendatu
    cd /etc  # /etc direktoriora joan
    pwd  # Uneko direktorioa erakutsi
    ```

## Ariketa 2: Fitxategiak Sortu eta Editatu

1. **Helburua**: Kontsolan fitxategiak sortu eta editatzen ikasi.
2. **Komandoak**: `touch`, `nano`

    ```bash
    touch nire_fitxategia.txt  # Fitxategi huts bat sortu
    nano nire_fitxategia.txt  # Fitxategia nano editorean ireki
    ```

## Ariketa 3: Baimenak Kudeatu

1. **Helburua**: Fitxategi baten baimenak aldatzen ikasi.
2. **Komandoak**: `chmod`, `ls -l`

    ```bash
    chmod 644 nire_fitxategia.txt  # Fitxategiaren baimenak aldatu
    ls -l  # Fitxategiaren baimenak erakutsi
    ```

## Ariketa 4: Fitxategiak Kopiatu eta Mugitu

1. **Helburua**: Fitxategiak kopiatu eta mugitzen ikasi.
2. **Komandoak**: `cp`, `mv`

    ```bash
    cp nire_fitxategia.txt nire_fitxategiaren_kopia.txt  # Fitxategia kopiatu
    mv nire_fitxategiaren_kopia.txt /tmp  # Fitxategia /tmp-ra mugitu
    ```

## Ariketa 5: Erabiltzaile Direktorioa eta Baimenak Konfiguratzeko Scripta Sortu

1. **Helburua**: Erabiltzaile direktorio bat konfiguratzea eta baimen estandarrak ezartzeko script bat sortzea.
2. **Komandoak**: `mkdir`, `chmod`, `echo`, `>`

    ```bash
    # configura_directorio.sh izeneko fitxategi bat sortu
    nano configura_directorio.sh  
    ```

    Gehitu hurrengo edukia fitxategian:

    ```bash
    #!/bin/bash
    mkdir ~/nire_direktorioa
    chmod 700 ~/nire_direktorioa
    echo "Direktorioa eta baimenak konfiguratuta" > ~/nire_direktorioa/info.txt
    ```

    Gorde eta itxi fitxategia. Ondoren, exekutagarri bihurtu:

    ```bash
    chmod +x configura_directorio.sh
    ```

    Exekutatu scripta:

    ```bash
    ./configura_directorio.sh
    ```


# Eginkizuna

Sortu script bat sortu hurrengo balditzak betez:
 1. Hasi komandoak banaka frogatzen eta gero joan scriptera zartzen.
  - Erabiltzaile bat sortu izen batekin
  - Talde bat sortu ikasleak izenarekin
  - Talde bat sortu irakasleak izenarekin
  - Fitzategi estruktura bat sortu erabiltzaileentzat hurrengo eskema jarraituz
    - /home
    - /ariketak.
      - Irakasleak izango dira ownerrak
      - Ikasleak editatzeko aukera ez dute izango
    - /azterketak
      - Irakasleak editatzeko baimena ez dute izango
      - Ikasleak edita dezekete baina ez dira ownerrak
    - /apunteak
      - ikasleek izango dituzte baimena guztiak
  - Soft link bat sortu /homen ikaslearen apunteak direktoriora

2. Bukatzean, bilatu moduren bat ubuntu kontenedore bat sortzerakoan jarraian sortutako scripta exekuta dadin.

## Ebazpena
