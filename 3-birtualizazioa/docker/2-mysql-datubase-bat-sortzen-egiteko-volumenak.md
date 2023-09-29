
## Datu base bat sortu (MySQL)

1. Sortu volumen bat dockerren komando baten bidez. Gero sortu datu base bat volumen horri erantsiz.
   
2. Izan 4 datu base batera contenedore bezela. (ez erantsi volumenik). Aldatu izenak eta portuak!. Orain zure makinaren windows prosezu eta sistemarek grafikoak ikusterarekin, zenbat mysql makina batear sortzeko gai izan daiteke?

3. Zein dira hurrengo komandoaren parametroak? Zer gertatuko da hau erabiliz gero?

```bash
docker run -e MYSQL_ROOT_PASSWORD=1234 
           -v C:\Users\yo\Documents\SistemaInformatikoak\sinfortolosaldealh\init.sql:/docker-entrypoint-initdb.d/init.sql 
           -p 3306:3306 
           mysql:latest
```

docker -d run -e MYSQL_ROOT_PASSWORD=1234 -v C:\Users\yo\Documents\SistemaInformatikoak\sinfortolosaldealh\init.sql:/docker-entrypoint-initdb.d/init.sql  -p 3306:3306 mysql:latest
4. Sortu .sql script bat 3. ariketako komandoaren berdina, eta itsasi taula batzuk sortzeko eta datu batzuk ezartzeko textua (eskatu ChatGPTri). 
   1. Datu base bat martzan jarri eta egiaztatu scriptaren kodea erabili egin dela. 
   2. Script hau executatuko da contenedorea itzali eta pizterakoan?

