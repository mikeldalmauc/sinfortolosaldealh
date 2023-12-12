#SistemasOperativos 

1. Irudia deskargatu
   
```docker pull dorowu/ubuntu-desktop-lxde-vnc:latest```

1. sortu volumen bat, bi era dakizkigu volumenak 

2. 
```
  docker run -d `
  --name ubuntu_desktop `
  -v ubuntu-si:/dev/shm `
  -p 6080:80 `
  dorowu/ubuntu-desktop-lxde-vnc 
```

Referentzia

```
https://computingforgeeks.com/run-ubuntu-linux-in-docker-with-desktop-environment-and-vnc/?expand_article=1
```