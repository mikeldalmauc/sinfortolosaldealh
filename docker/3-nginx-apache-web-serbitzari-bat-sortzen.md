## Web serbitzari bat sortu (Nginx)

Ikusi gehiago:
[Nginx DockerHuben](https://hub.docker.com/_/nginx)

Sortu fitxategi bat, izen ZEHATZ honekin. Zure web orrialderarn sustraia izango da.
	index.html
	
Sortu fitxategi bat izen ZEHATZ honekin Dockerfile, eta huerrengo edukia erabili, copy komandoaren jatorrizko direktorioa alda dezakezu baina kontenedore barruko helbidea ez ezazu aldatu, ngingx-ek leku gure web horria leku horretan kokatzea eskatzen digu.

```
# Irudi bat autatzen dugu guraso gisa
FROM nginx

# Dockerfilea kokatuta dagoen direktorioko eduki guztiak kopiatuko ditu kontendoreko /usr/share/nginx/html karpetan, gure index.html haien artean.
COPY . /usr/share/nginx/html
```
Irudia sortu

`docker build -t webPolita .` 

 `-t webPolita` : Tag etiketa izendatzeko
 `.` contsolaren egungo kokapena (hemen Dockerfile bat egon behar da presente)
 
`docker run --name webPolita -d -p 8080:80 web-polita`  
  
## Web serbitzari bat sortu (Apache)

TODO
[Apache DockerHuben](https://hub.docker.com/_/httpd)

