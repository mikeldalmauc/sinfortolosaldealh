---
tags:
  - SistemasOperativos
  - Arch
---

FROGA sistema eragileak

Denbora: 
2h 10' azterketa egiteko

Azterketa unean zuzenduko ditu irakasleak. Bukatzerakoan, deitu eta zuzenduko zaizu.

- [Ingurune virtuala ezarri  (O) 📦](#ingurune-virtuala-ezarri--o-)
	- [Deskargatu ISOa (Opzionala) (O)📀](#deskargatu-isoa-opzionala-o)
	- [VBoxen makina sortu 🖥️ (O)](#vboxen-makina-sortu-️-o)
- [Partizioak, formatoa eta muntaia (O)](#partizioak-formatoa-eta-muntaia-o)
	- [Partizioak sortu 🍕 (O)](#partizioak-sortu--o)
	- [Partizioak montatu 🏇 eta swap ezarri (O)](#partizioak-montatu--eta-swap-ezarri-o)
		- [Fstab fitxategia sortu eta sisteman sartu 🏠 (O)](#fstab-fitxategia-sortu-eta-sisteman-sartu--o)
- [Sistema konfiguratzen (E)⚙️](#sistema-konfiguratzen-e️)
	- [Erabiltzaileak eta segurtasuna (E)👥](#erabiltzaileak-eta-segurtasuna-e)
	- [Hizkuntzak (E) 💬](#hizkuntzak-e-)
	- [Grub instalatu (E) ☣️](#grub-instalatu-e-️)
	- [Neofetch instalatu (E) 😎](#neofetch-instalatu-e-)
- [Gehigarriak (A) ⚙️](#gehigarriak-a-️)
	- [Black-Arch linuxeko repositorioak gehitu (A) 🖤](#black-arch-linuxeko-repositorioak-gehitu-a-)
	- [Erabiltzaile interfaze grafikoa (A) 👱‍♂️](#erabiltzaile-interfaze-grafikoa-a-️)


# Ingurune virtuala ezarri  (O) 📦
## Deskargatu ISOa (Opzionala) (O)📀

Deskargatu isoa arch linuxen webgune ofizialetik, eta beheko estekatik

[Arch Linux Official website](https://archlinux.org/download/)

![Alt text](images/Pasted%20image%2020231214083636.png)

## VBoxen makina sortu 🖥️ (O)

Sortu makina berri bat beheko ezaugarriekin, <mark style="background: #FF5582A6;">2.2Gb Ram eta 22 Gb disko gogo</mark>r, prosezadore batekin.

---
# Partizioak, formatoa eta muntaia (O)

## Partizioak sortu 🍕 (O)

3 partizio sortu hurrengo memoria esleipenarekin eta formatuarekin:
- sda1 - 512Mb - fat32
- sda2 - 16Gb  - ext4
- sda3 - 5.5Gb - swap


## Partizioak montatu 🏇 eta swap ezarri (O)

Montatu hurrengo partizioak dagokien helbideetan eta swap partizio aktibatu: 

- sda2  -> /mnt
- sda1  -> /mnt/boot

--- 
Packstrap erabiliz pakete batzuk instalatu, hauek gure linuxeko sistemaren fitzategi ezagun asko gehituko dituzte zeren momentuz /mnt hutsik dago:

```bash
pacstrap /mnt linux linux-firmware networkmanager grub wpa_supplicant base base-devel
```

Deskarga nahiko handia denez, hau bukatzean <mark style="background: #ABF7F7A6;">virtual boxen snapshot bat egin spanpshot - 1 izenarekin</mark>, horrela zerbat txarto badoa puntu honetara vuelta genezake. 

---
### Fstab fitxategia sortu eta sisteman sartu 🏠 (O)

Fstab fitxategia sistema eragileari esaten dio nola montatu behar diren partizioak. Horrela, sistema pizterakoan automatikoki montatuko dira eta aurreko pausoak  ez ditugu egin behar.

Sisteman sartu hurrengo aginduarekin:
```bash
arch-chroot /mnt
```

---

# Sistema konfiguratzen (E)⚙️

## Erabiltzaileak eta segurtasuna (E)👥

- Root erabiltzaileari **Toor** pasahitza ezarri.
- Sortu erabiltzaile bat **Peru** izenarekin eta **Peru** pasahitzarekin.
- Gehitu Peru erabiltzailea **wheel** taldera

Orain, sudo paketea instalatu hurrengo komandoa erabiliz:

```bash
pacman -S sudo
```

- Editatu sudoers fitzategia baldin wheel taldekideak edozein agindu erabil dezkete pasahitzik eskatu gabe.


## Hizkuntzak (E) 💬

- Hurrengo locale hizkuntzak istalatu:

  - es_ES
  - de_DE
  - en_GB

- Teklatua gazteleraz ezarri

---
## Grub instalatu (E) ☣️

Grub, linuxeko boot loadera da, menu bat eskeintzen du sistema pizterakoan zenbait pizteko modu autatzeko. 

Grub instalatu.

--- 

Hau egin ostean, Arch linuxen abia diska virtual boxetik kendu. Sistema pixtereakoan Grub menua ikusi beharko da eta sistema eragilea modu zuzenean piztu beharko da.

## Neofetch instalatu (E) 😎

Instalatu neofetch programatxoa, hau sistemaren informazioa erakutziko digu. Frogatu `neofetch` erabiltzen.

```bash
pacman -S neofetch
```

![Alt text](images/Pasted%20image%2020231214135552.png)


# Gehigarriak (A) ⚙️

---
## Black-Arch linuxeko repositorioak gehitu (A) 🖤


Direktorioren baten, Curl agindua erabiliz hurrengo helbideko fitxategia deskaragatu: 

```bash
curl -O https://blackarch.org/strap.sh > strap.sh
```

`strap.sh` bash script bat da. Exekuzio baimena eman eta exekutatu.


## Erabiltzaile interfaze grafikoa (A) 👱‍♂️

Intefaze grafiorako paketeak deskargatuko ditugu lehenik eta behin.

 ⚠️ Adi deskarga nahiko pisutzuak izango direla. 
 ⚠️ Hasi baino lehen Snapshot bat egin makin birtualarena


```bash
pacman -S xorg xorg-server
```

```bash
pacman -S gnome
```

Pakete kudeatzailea eguneratu eta sistema berrebiarazi:
```bash
pacman -Syu
reboot
```

Lehen egin genuen bezala, interfaze grafikoko serbitzuak piztu eta ahalbidetuko ditugu `systemctl start` eta `systemctl enable`

```bash
systemctl start gdm.service
```
```bash
systemctl enable gdm.service
```

