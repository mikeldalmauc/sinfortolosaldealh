# Urrunetik sistema kudeatzen

## SSH protokoloa erabiliz

### SSH instalatu

1. Virtual Box erabiltzen badugu, aldatu sare interfazea *Adaptador Puente* sarera.

![alt text](image-5.png)

2. Istalatzeko openssh-server paketea instalatuko dugu lehenik eta behin.

```bash
pacman -S openssh
```

2. SSH zerbitzariaren Konfiguraketa aldatuko dugu

Pasahitza eskatzeko, hurrengo lerroari iruzkina kenduko diogu:
```bash
nano /etc/ssh/sshd_config
```

Aldatu defektuzko portua izateko hurrengo `39901` , kendu iruzkina.

3. Azkenik zerbitzua martxan jarri

```bash
systemctl start sshd.service
```

Nahi izanda zerbitzua automatikoki piztea 

```bash
systemctl enable sshd.service
```

[Referentzia](https://wiki.archlinux.org/title/OpenSSH)
### SSH bitartez konektatu

Windows powershellen konektatu.

```bash
ssh -p 39901 mike@Iphelbidea
```
- -p : portua 
- erabiltzailea@ip-helbidea

*Oharra: `ip a` edo `ifconfig` aginduekin zuen ip-a aurki dezakezue.

## FTP erabili

Deskargatu paketea

```bash
pacman -S  vsftpd
```
Martxan jarri FTP zerbitzaria

```bash
systemctl start vsftpd.service
```
### Konfiguratu FTP zerbitzaria

Editatu konfigurazioa `/etc/vsftpd.conf`

Ahalbidetu fitxategiak igotzea eta sistemako erabilitzaileak konektazea beren pasahitzekin:

write_enable=YES
local_enable=YES

Honekin, edonor konekta daiteke anonymous/anonymous. Hau segurtasunaren arlotik, kontuz izan behar gara ez uzteko edonori aldaketak egiten beraz 
#anon_upload_enable=YES lineari ez kendu iruzkina beharrezkoa ez bada.

anonymous_enable=YES

[ftp zerbitzaria](https://wiki.archlinux.org/title/Very_Secure_FTP_Daemon)

1- Instalatu ftp zerbitzaria arch linuxen
2- Konfiguratu aldaketak
3- Konektatu
