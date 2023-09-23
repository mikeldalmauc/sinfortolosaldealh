
## Instalatu Docker Windowsen
TODO

## Datu base bat sortu (MySQL)

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 mysql:latest```

volumen batekin 

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p -v my_mysql_volume:/var/lib/mysql 3306:3306 mysql:latest```

Parametroak
- **-name izen-bat-eman** : Kontenedorearen Izena 
- **-e MYSQL_ROOT_PASSWORD=1234**: Konfigurazio parametroa
- **-d** : Detached, atzekaldeko prosezu bezela executatuko da contenedorea
- **-p 3306:3306** : Portuak mapeatu gureOrdenagailua:kontenedorea. 
  *Bi kontenedore desberdin ezin dira gure ordenagailuko portu berdinera mapeatu!
- volumenak sortzeko bi aukera:
	```-v /my/own/datadir:/var/lib/mysql``` (bind mount)
 ```-v my_mysql_volume:/var/lib/mysql```  (docker volume)
- **mysql:tag** Irudiaren izena eta etiketa


[Irudia DockerHuben](https://hub.docker.com/_/mysql)

### Kliente batekin datu base batera konektatu (MySQLWorkbench)
TODO

### Beste mySQL konfigurazio parametro arruntak
TODO

## Web serbitzari bat sortu (Nginx)
TODO

## Garapen ingurune bat sortu (Java)
TODO



