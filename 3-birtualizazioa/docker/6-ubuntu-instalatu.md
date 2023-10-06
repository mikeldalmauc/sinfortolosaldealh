
1. Irudia deskargatu
```docker pull dorowu/ubuntu-desktop-lxde-vnc:latest```

2. sortu volumen bat 

3. 
```
  docker run -d \
  --name ubuntu_desktop \
  -v ubuntu-si:/dev/shm \
  -p 6080:80 \
  dorowu/ubuntu-desktop-lxde-vnc
```

Referentzia, ubuntu kontendorea konfiguratzeko beste mota batzuetarako.

```
https://computingforgeeks.com/run-ubuntu-linux-in-docker-with-desktop-environment-and-vnc/?expand_article=1
```