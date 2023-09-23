
## Datu base bat sortu (MySQL)

1. Sortu volumen bat dockerren komando baten bidez. Gero sortu datu base bat volumen horri erantsiz.
   
2. Izan 4 datu base batera contenedore bezela. (ez erantsi volumenik). Aldatu izenak eta portuak!.

3. Zein dira hurrengo komandoaren parametroak? Zer gertatuko da hau erabiliz gero?

```bash
docker run -e MYSQL_ROOT_PASSWORD=root_password 
           -e MYSQL_DATABASE=my_database 
           -e MYSQL_USER=user 
           -e MYSQL_PASSWORD=user_password 
           -v /path/to/init.sql:/docker-entrypoint-initdb.d/init.sql 
           -p 3306:3306 
           mysql:latest
```

### Using Docker CLI
