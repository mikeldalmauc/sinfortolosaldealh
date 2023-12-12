#Hacking #Networks
## Cual es tu IP local

El siguiente comando muestra la ip *inet* 172.17.0.2 y es la ip privada que identifica el equipo en una red que utiliza el protocolo de internet.

![[Pasted image 20231211221636.png]]

![[Pasted image 20231211222029.png]]

---
## Convertir una ip a binario


Utilizando el programa bc podemos transformar la ip a binario.

![[Pasted image 20231211224000.png]]

Haciendolo para cada uno de sus octetos 

```
 echo "$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc).$(echo "obase=2; 172" | bc)"
```

Esta sería la representación en binario de la ip:

![[Pasted image 20231211224735.png]]

---

Aproximadamente 4300 millones de ips representables por el protocolo ipv4, esto es muy poco teniendo en cuenta la población y el numero de dispositivos que se conectan a internet actualmente.

![[Pasted image 20231211224919.png]]

IPv6 tiene 128 bits permitiendo representar tantos dispositivos

![[Pasted image 20231211225140.png]]

---

La siguiente ipv6 *inet6* está reprensentada en hexadecimales, se requieren 4 bits para representar cada número, esto es 16 bits por bloque  684d:17ff:fe17:da04 en el caso de abajo.

![[Pasted image 20231211232831.png]]

Otros parámetros importantes como netmask y broadcast ya que nos van a ayudar a entender cuantas IPs puede haber repartidas en una red local. 

---
#### Convertir todos en bucle

```
for octeto in $(hostname -I | tr '.' ' '); do echo "obase=2;$octeto" | bc; done
```

Devolvería para la Ip anterior la siguiente respuesta

![[Pasted image 20231211223829.png]]

---
### Ejercicio : Convertir la ipv6 a binario

[[Dirección MAC]]

