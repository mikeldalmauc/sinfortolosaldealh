

## Laboratorioa prestatu

Docker compose fitxategi honek hiru makina jartzen ditu martxan:
	1. Kali linux makina bat
		1. Makina hau beheko dockerfile erabiliko du kontendorea sortzeko
	2. Heartbleed makina bulnerablea
	3. 
```bash
version: '3'

services:
  kali-rolling:
    build:
      context: .
      dockerfile: Dockerfile-kali-rolling
    tty: true
    stdin_open: true
    networks:
      - pentesting-lab-network

  vaas-cve-2014-0160:
    image: hmlio/vaas-cve-2014-0160
    networks:
      - pentesting-lab-network

  audi_sqli:
    image: tuxotron/audi_sqli
    networks:
      - pentesting-lab-network

networks:
  pentesting-lab-network:
    driver: bridge
```
docker exec -it Contenedor_Kali /bin/bash
