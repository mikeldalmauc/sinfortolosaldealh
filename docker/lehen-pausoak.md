
## Instalatu Docker Windowsen

TODO

## Datu base bat sortu (MySQL)

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 mysql:latest```

volumen batekin 

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p -v my_mysql_volume:/var/lib/mysql 3306:3306 mysql:latest```

Parametroak
- **-name some-mysql** : Kontenedorearen Izena 
- **-e MYSQL_ROOT_PASSWORD=1234**: Konfigurazio parametroa
- **-d** : Detached, atzekaldeko prosezu bezela executatuko da contenedorea / 
- **-p 3306:3306 Portuak**
- volumenak sortzeko bi aukera:
	```-v /my/own/datadir:/var/lib/mysql``` (bind mount)
 ```-v my_mysql_volume:/var/lib/mysql```  (docker volume)
- **mysql:tag** Irudiaren izena eta etiketa


[Irudia DockerHuben](https://hub.docker.com/_/mysql)

### Kliente batekin datu base batera konektatu (MySQLWorkbench)
TODO
## Web serbitzari bat sortu (Nginx)
TODO
## Garapen ingurune bat sortu (Java)
TODO

## 

