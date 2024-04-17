# Scriptak Linuxen

- [Scriptak Linuxen](#scriptak-linuxen)
  - [Oinarrizko script baten adibidea:](#oinarrizko-script-baten-adibidea)
  - [Andagaiak Bash-en](#andagaiak-bash-en)
    - [Aldagaien erabileraren adibidea:](#aldagaien-erabileraren-adibidea)
  - [Baldintzak Bash-en](#baldintzak-bash-en)
    - [Baldintza adibidea:](#baldintza-adibidea)
  - [Bucles en Bash](#bucles-en-bash)
    - [Ejemplo de Bucle `for`:](#ejemplo-de-bucle-for)
    - [Ejemplo de Bucle `while`:](#ejemplo-de-bucle-while)
  - [Lectura de una Variable Introducida por el Usuario](#lectura-de-una-variable-introducida-por-el-usuario)
    - [Ejemplo de Lectura de Variable Introducida por el Usuario:](#ejemplo-de-lectura-de-variable-introducida-por-el-usuario)
  - [Añadir Parámetros al Script](#añadir-parámetros-al-script)
    - [Ejemplo de Añadir Parámetros al Script:](#ejemplo-de-añadir-parámetros-al-script)
  - [Usos Comunes de Scripts en Linux](#usos-comunes-de-scripts-en-linux)
- [Ariketak](#ariketak)
  - [Ariketa 1 - Whoami](#ariketa-1---whoami)
  - [Ariketa 2 - Datak](#ariketa-2---datak)
  - [Ariketa 3 - Berdinak](#ariketa-3---berdinak)
  - [Ariketa 4 - Kalkulagailua](#ariketa-4---kalkulagailua)
  - [Ariketa 5 - Baimenak](#ariketa-5---baimenak)
  - [Ariketa 6 - Fitxategiak](#ariketa-6---fitxategiak)


Linuxeko script-ak zeregin espezifikoak egiteko modu sekuentzialean exekutatzen diren komandoen edo jarraibideen sekuentziak dira. Script horiek Bash (Bourne Again Shell) bezalako lengoaietan idatzita daude, Linuxen banaketa gehienetan defektuzko shell-a BASH da.

## Oinarrizko script baten adibidea:

```bash
#!/bin/bash

# Hau iruzkin bat da
echo "Kaixo, Mundua!"
```

Adibide honetan:

- `#!/bin/bash`: Lerro honek, sistemari adierazten dio bash interpretea erabili behar duela scripta exekutatzeko.
- `echo "Kaixo, Mundua!"`: Hurrengo agindua kaixo mundua inprimatuko du.

## Andagaiak Bash-en

Aldagaiak geroago script-ean erabiliko den informazioa gordetzeko erabiltzen dira. Aldagaiei balioak eslei dakizkieke eta, ondoren, aldagai horiek script-ean erabil daitezke.

### Aldagaien erabileraren adibidea:

```bash
#!/bin/bash

# Esleitu balio bat aldagaiari
IZENA="Patxi"

# Usar la variable
echo "Kaixi, $IZENA!"
```

## Baldintzak Bash-en

Fluxua kontrolatzeko egiturak, baldintzak bezala, script batean erabakiak hartzeko erabiltzen dira. Bashen, hurrengo gako-hitzak erabiliz sortzne dira baldintzak: `if`, `else`, `elif` (else if) eta `then`, baldintzak definitzeko.

### Baldintza adibidea:

```bash
#!/bin/bash

ADINA=18

if [ $ADINA -ge 18 ]; then
    echo "Adin naguzia zara."
else
    echo "Adin txikia zara."
fi
```

- `[ $ADINA -ge 18 ]`: Baldintza `-ge` **greater or equal** esan nahi du
- Beste komparaketa moduak:
  - `eq` equal -> berdina
  - `ne` not equal -> ezberdina
  - `lt` less than -> txikiagoa
  - `gt` greater than  -> handiagoa 
  - `le` less than or equal -> txikiagoa edo berdina
  - `ge` greater or equal -> handiagoa edo berdina
  - ` 

```bash
#!/bin/bash

EDAD=18

if [ $EDAD -ge 80 ]; then
    echo "Eres anciano."
elif [$EDAD -ge 18]; then
    echo "Eres mayor de edad."
else
    echo "Eres menor de edad."
fi
```

## Bucles en Bash

Los bucles se utilizan para repetir una serie de comandos varias veces. En Bash, puedes usar los bucles `for` y `while`.

### Ejemplo de Bucle `for`:

```bash
#!/bin/bash

# Imprimir los números del 1 al 5
for NUMERO in 1 2 3 4 5; do
    echo "Número: $NUMERO"
done
```

### Ejemplo de Bucle `while`:

```bash
#!/bin/bash

# Aldagai bat 
CONTADOR=0

# Bucle while que se ejecuta mientras el contador sea menor que 5
while [ $CONTADOR -lt 5 ]; do
    echo "Contador: $CONTADOR"
    # Incrementar el contador
    ((CONTADOR++))
done
```

## Lectura de una Variable Introducida por el Usuario

Para leer una variable introducida por el usuario, puedes utilizar el comando `read` en Bash. Este comando permite al usuario introducir datos desde el teclado y asignarlos a variables en el script.

### Ejemplo de Lectura de Variable Introducida por el Usuario:

```bash
#!/bin/bash

# Pedir al usuario que introduzca su nombre
echo "Por favor, introduce tu nombre:"
read NOMBRE

# Saludar al usuario utilizando la variable introducida
echo "Hola, $NOMBRE!"
```

## Añadir Parámetros al Script

Puedes añadir parámetros al script cuando lo ejecutas desde la línea de comandos. Estos parámetros se pueden acceder dentro del script utilizando las variables especiales `$1`, `$2`, `$3`, etc., donde `$1` representa el primer parámetro, `$2` el segundo, y así sucesivamente.

### Ejemplo de Añadir Parámetros al Script:

```bash
#!/bin/bash

# Utilizar el primer parámetro proporcionado al script
echo "El primer parámetro es: $1"

# Utilizar el segundo parámetro proporcionado al script
echo "El segundo parámetro es: $2"

# Utilizar el tercer parámetro proporcionado al script
echo "El tercer parámetro es: $3"
```

Para ejecutar este script con parámetros, puedes hacerlo de la siguiente manera desde la línea de comandos:

```bash
bash script.sh parametro1 parametro2 parametro3
```

En este ejemplo, `parametro1`, `parametro2` y `parametro3` son los parámetros que se pasan al script y que pueden ser utilizados dentro del script utilizando las variables especiales `$1`, `$2` y `$3` respectivamente.

Con esto, puedes leer fácilmente variables introducidas por el usuario y añadir parámetros al script para hacerlo más versátil y adaptable a diferentes situaciones.

## Usos Comunes de Scripts en Linux

1. **Automatización de Tareas**: Los scripts se utilizan para automatizar tareas repetitivas, como la copia de archivos, la creación de copias de seguridad y la instalación de paquetes.
2. **Administración del Sistema**: Los administradores de sistemas utilizan scripts para configurar y mantener servidores Linux, realizar copias de seguridad del sistema y monitorear el rendimiento del servidor.
3. **Procesamiento de Datos**: Los scripts se utilizan para procesar y analizar grandes conjuntos de datos, como registros de servidores y archivos de registro.
4. **Despliegue de Aplicaciones**: Los scripts se utilizan para automatizar el proceso de despliegue de aplicaciones, desde la compilación y empaquetado hasta la implementación en servidores de producción.

Los scripts en Linux son una herramienta poderosa que puede ayudarte a automatizar tareas, simplificar procesos y mejorar la eficiencia en tu trabajo diario con el sistema operativo. Con un poco de práctica y comprensión de las estructuras básicas de programación en Bash, puedes crear scripts útiles y eficientes para una variedad de propósitos.

# Ariketak 

- **Nola entregatu ariketak:**
  1. Klonatu zuen github repositorioa Arch Linux edo Ubuntu makinan. 
  2. Ariketa bakoitzkeko scriptak `ariketa1.sh`, `ariketa2.sh`, ... izenekin gorde zuen repositorioko karpetan
  3. Igo script guztiak zuen repositoriora
     1. Interfaze grafikoa istalatuta izan beharko duzue, githubeko pasahitza eskatuko baitizue
     2. Gogoratu igotzeko aginduak
        1. `git add --all`
        2. `git commit -m "ariketak script"`
        3. `git push`

## Ariketa 1 - Whoami
Sortu script bat hurrengo aginduak egingo dituena. 

1. Terminala ezabatu, 
2. Ze erabiltzaile zaren eta zein direktoriotan zauzen esango dizu. 

## Ariketa 2 - Datak
Hilabete eta urte bat idazteko eskatuko dizu, ondoren data horretako egutegia erakutsi beharko dizu. 

## Ariketa 3 - Berdinak
Script honek terminaletik idazten ditugun bi izen berdinak diren edo ez konprobatuko du. Berdinak badira, berdinak direla erantzungo digu eta desberdinak badira, desberdinak direla

## Ariketa 4 - Kalkulagailua
Script bat sortu, non balio bat eskatuko dizun, gero ze eragiketa egin nahi duzun galdetuko dizu (batuketa +, kenketa -, biderkaketa *, eta zatiketa /) eta azkenik bigarren balio bat. Zure script-ak emaitza kalkulatuko du.
        
## Ariketa 5 - Baimenak
Aldagai bezela fitxategi baten izena jaso behar da eta konprobatu behar da eta ze baimena dituen, (idazteko, irakurtzeko edo exekutatzeko). Programak esango digu zeintzuk diren baimenak.

## Ariketa 6 - Fitxategiak
Aldagai bezala fitxategi batzuen izena jaso eta bakoitzarentzak konprobatu existitzen den fitxategiak diren eta horrela bada, erakutsi fitxategiaren edukia pantailan. 


