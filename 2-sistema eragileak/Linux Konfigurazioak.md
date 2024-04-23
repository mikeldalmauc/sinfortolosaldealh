---
tags:
  - SistemasOperativos
---

1. zer gertatzen `echo $PATH` idazten  dugunean? 

2. Zer gertatzen da `which whoami` agindua erabiltzen dugunean?

3. Erabili `cat /etc/passwd` agindua passwd fitxategiaren edukia ikusteko, ikusi ireteeraren itzura, aurkitu zure erabiltzailea. Kopiatu zure erabiltzaileren lerroa eta identifikatu zer esan nahi duen zati bakoitza.
   
4. Erabili `cat /etc/shells`  agindua sheels fitxategiaren edukia ikusteko. Zer esan nahi du agindu honen irteera.

5. Erabili `cat /etc/hosts`  agindua hosts fitxategiaren edukia ikusteko. Aztertu zer esan nahi duen fitxategi honen irteera.
   
1. Aztertu `/etc` direktorioa, fitxategirik ezagutzen al duzu? Kopiatu 4 fitxategiren izenak beren baimenekin batera. 
	1. Zer nolako baimenak dituzte? 
	2. Zen da fitxategi hauen Ownerra?
	3. Zein talderena da fitxategi bakoitza?
	4. Aztertu zertarako balio duen fitxategi bakoitza?

2. Frogatu hurrengo aginduak:
	1. `whoami; ls`
	2. `whoami; whoami; whoami`
	3. zertarako balio du ;?
	   
7. Erabili hurrengo aginduak eta ikusi `echo $?` aginduaren irteerak. Zer esan nahi dute zenbaki hauek?

   ```bash 
   ls
   echo $?
   whoam
   echo $?
   cat /etc/passw
   echo $?
   ```

9. 