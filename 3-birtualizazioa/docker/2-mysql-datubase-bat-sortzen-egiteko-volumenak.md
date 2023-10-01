
## Datu baseak sortzen

1. Sortu volumen bat dockerren komando baten erabiliz. Gero sortu datu base bat volumen horri erantsiz.
   
2. Izan 4 datu base batera contenedore bezela. (ez erantsi volumenik). Aldatu izenak eta portuak!. Orain, begiratu zure makinaren prosezuak eta memoriaren erabilera. Aldi berean, zenbat mysql contendore sortzeko gai zara?

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

5. Gure lantaldeak asko garatu dira, orain, gero eta konfigurazio parametro gehiago behar ditugu, gure docker commandoak asko luzatu dira! Nola egin genezake konfigurazio guzti hauek fitxategi baten bitartez ezartzeko? 
