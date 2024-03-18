# Urrunetik sistema kudeatzen

## SSH protokoloa erabiliz

### SSH instalatu

1. Virtual Box erabiltzen badugu, aldatu sare interfazea *Adaptador Puente *sarera.

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

Aldatu defektuzko portua izateko hurrengo `39901`

![alt text](image-6.png)

[Referentzia](https://wiki.archlinux.org/title/OpenSSH)
### SSH bitartez konektatu

Windows powershellen konektatu.

```bash
ssh -p 29901 mike@10.0.2.15
```
- -p : portua 
- erabiltzailea@ip-helbidea

*Oharra: `ip a` edo `ifconfig` aginduekin zuen ip-a aurki dezakezue.
## FTP erabili

[ftp zerbitzaria](https://wiki.archlinux.org/title/Very_Secure_FTP_Daemon)

1- Instalatu ftp zerbitzaria arch linuxen
2- Konfiguratu aldaketak
3- Konektatu
