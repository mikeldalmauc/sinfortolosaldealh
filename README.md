# sinfortolosaldealh
Sistema Informatikoen repositorioa

## MYSQL datu base bat sortu

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p 3306:3306 mysql:latest```

volumen batekin 

```docker run -d --name some-mysql -e MYSQL_ROOT_PASSWORD=1234 -p -v my_mysql_volume:/var/lib/mysql 3306:3306 mysql:latest```

Parametroak
- **-name some-mysql** : Izena 
- **-e MYSQL_ROOT_PASSWORD=1234**: Configurazio parametroa
- **-d** : Detached, atzekaldeko prosezu bezela executatuko da contenedorea / 
- **-p 3306:3306 Portuak**
- volumenak sortzeko bi aukera:
	```-v /my/own/datadir:/var/lib/mysql``` (bind mount)
 ```-v my_mysql_volume:/var/lib/mysql```  (docker volume)
- **mysql:tag** Irudiaren izena eta etiketa


[Irudia DockerHuben](https://hub.docker.com/_/mysql)
