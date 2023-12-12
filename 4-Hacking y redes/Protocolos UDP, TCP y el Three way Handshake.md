#Hacking #Networks
### Ventajas y desventajas

**TCP (Protocolo de Control de Transmisión):**

**Ventajas:**
1. **Confiabilidad:** TCP garantiza la entrega ordenada y confiable de datos. Si se pierden paquetes en la transmisión, TCP se encarga de retransmitirlos.
2. **Control de Flujo:** TCP implementa mecanismos de control de flujo para evitar la congestión en la red y asegurar que el receptor pueda procesar los datos a un ritmo adecuado.
3. **Reconocimiento y Retransmisión:** Proporciona mecanismos de reconocimiento para asegurar que el emisor sepa qué datos se han recibido correctamente y pueda retransmitir los que se hayan perdido.

**Desventajas:**
1. **Mayor Sobrecarga:** TCP tiene una mayor sobrecarga de protocolo en comparación con UDP debido a la necesidad de establecer y mantener conexiones, control de flujo y retransmisiones.
2. **Mayor Latencia:** Debido a los mecanismos de garantía de entrega y control de flujo, TCP puede introducir cierta latencia en la transmisión de datos.

---

**UDP (Protocolo de Datagramas de Usuario):**

**Ventajas:**
1. **Menor Sobrecarga:** UDP tiene una menor sobrecarga de protocolo, ya que no requiere establecer ni mantener conexiones, y no implementa control de flujo ni retransmisión.
2. **Menor Latencia:** Al no tener los mecanismos adicionales de TCP, UDP puede ofrecer menor latencia en la transmisión de datos.
3. **Transmisión de Datos en Tiempo Real:** Es adecuado para aplicaciones que requieren una transmisión rápida de datos en tiempo real, como transmisiones de audio y video.

**Desventajas:**
1. **No Garantiza la Entrega:** UDP no garantiza la entrega de datos ni el orden en que se reciben. Puede haber pérdida de paquetes durante la transmisión.
2. **Sin Control de Flujo:** No hay mecanismos de control de flujo en UDP, lo que significa que los datos se envían a la velocidad máxima posible, lo que puede provocar congestión en la red.
3. **No hay Reconocimiento ni Retransmisión:** Si se pierden paquetes, no hay mecanismos automáticos para retransmitirlos, y el usuario debe implementar sus propios mecanismos de recuperación si es necesario.

--- 

En resumen, TCP es más adecuado para aplicaciones que requieren confiabilidad y garantía de entrega, mientras que UDP es preferible en situaciones donde la latencia es crítica y se puede tolerar cierta pérdida de datos. La elección entre TCP y UDP depende de los requisitos específicos de la aplicación.


![[Pasted image 20231211234056.png]]

---
### Three way handshake

nota: Ack viene de Acknowledge

![[Pasted image 20231211233951.png]]

---
### Observar el three way handshake con Netcat y Wireshark

Escuchamos utilizando la herramienta NetCat, que es una herramienta útil para transmision de datos en tre por tcp o udp, es versatil y puede utilizarse para tareas como pruebas de escucha tal y como haremos ahora pero también crear tuneles para abrir un shell remoto, reenvio de puertos y conexiones ssl entre otros.

Ponerse en escucha

![[Pasted image 20231212004348.png]]

Tratar de conectarse a traves de este puerto en el que estamos en escucha

![[Pasted image 20231212000355.png]]

---

En wireshark capturar la interfaz loopback y filtrar por tcp

![[Pasted image 20231212004339.png]]

--- 

### TODO  Hacer que esta práctica funcione con los contendores de docker - ver redes macvlan [[Dirección MAC]]

#TODO

---
## Procolos y puertos

Es importante de cara a un escaneo de los puertos con la herramienta *nmap* saber que puertos está utilizando una máquina y que con que protocolo
TCP
----------------------
- 21  -> FTP
- 22 -> SSH
- 23 -> (Telnet)
- 25 -> (SMTP)
- 53 -> (DNS)
- 80 -> HTTP
- 443 -> HTTPS
- 110  -> (POP3)
- 139, 445 -> (SMB)
- 4143 -> (IMAP)

UDP
------------------------
- 53 -> (DNS)
- 69  -> (TFTP)
- 161 -> (SNMP)

[[Modelo de capas OSI]]

