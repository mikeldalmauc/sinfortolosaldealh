---
tags:
  - SistemasOperativos
  - Arch
---

# ArchLinux instalatu RAID0 baten

- [ArchLinux instalatu RAID0 baten](#archlinux-instalatu-raid0-baten)
- [Ingurune virtuala ezarri  📦](#ingurune-virtuala-ezarri--)
	- [Deskargatu ISOa 📀](#deskargatu-isoa-)
	- [VBoxen makina sortu 🖥️](#vboxen-makina-sortu-️)
		- [EFI ezarri](#efi-ezarri)
		- [Diska gogorrak](#diska-gogorrak)
- [Oinarrizkoak  👣](#oinarrizkoak--)
- [RAID 0 bat prestatu 💽💽](#raid-0-bat-prestatu-)
	- [MDADM programa instalatu](#mdadm-programa-instalatu)
- [Partizioak, formatoa eta muntaia](#partizioak-formatoa-eta-muntaia)
	- [Partizio taulak garbitu](#partizio-taulak-garbitu)
	- [Partizioak sortu 🍕](#partizioak-sortu-)
	- [Partizioak formateatu ℹ️](#partizioak-formateatu-ℹ️)
	- [Partizioak montatu 🏇](#partizioak-montatu-)
		- [Fstab eta MDADM cofigurazio fitxategiak sortu](#fstab-eta-mdadm-cofigurazio-fitxategiak-sortu)
	- [Sisteman sartu 🏠](#sisteman-sartu-)
- [Sistema konfiguratzen ⚙️](#sistema-konfiguratzen-️)
	- [Erabiltzaileak 👥](#erabiltzaileak-)
		- [Root pasahitza 🗝️](#root-pasahitza-️)
		- [Erabiltzaile arrunta sortu 🙍](#erabiltzaile-arrunta-sortu-)
		- [**sudoers** fitxategia editatu](#sudoers-fitxategia-editatu)
	- [Hizkuntzak 💬](#hizkuntzak-)
		- [Programen hizkuntzak](#programen-hizkuntzak)
		- [Teklatuaren hizkuntza kontsolan ⌨️](#teklatuaren-hizkuntza-kontsolan-️)
	- [Host izena](#host-izena)
	- [Konfigurazio batzuk aldatu](#konfigurazio-batzuk-aldatu)
	- [Grub instalatzen ☣️](#grub-instalatzen-️)
	- [Sistema berrebiarazi ♻️](#sistema-berrebiarazi-️)
- [Sistema Konfiguratzen - 2 ⚙️](#sistema-konfiguratzen---2-️)
	- [Interneterako serbitzuak konfiguratu 📶](#interneterako-serbitzuak-konfiguratu-)

Video Erreferentzia: https://www.youtube.com/watch?v=fshLf6u8B-w&t=2737s

# Ingurune virtuala ezarri  📦
## Deskargatu ISOa 📀

Deskargatu isoa arch linuxen webgune ofizialetik, eta beheko estekatik

[Arch Linux Official website](https://archlinux.org/download/)

![Alt text](images/Pasted%20image%2020231214083636.png)

## VBoxen makina sortu 🖥️

Sortu makina berri bat beheko ezaugarriekin, <mark style="background: #FF5582A6;">2Gb Ram, prosezadore birekin.



![Alt text](images/Pasted%20image%2020231214083910.png)



![Alt text](images/Pasted%20image%2020231214083957.png)

### EFI ezarri

![alt text](images/image-19.png)
### Diska gogorrak 

2 diska gogor erabiliko ditugu, 12GB-ekoak.

![alt text](images/image-14.png)

# Oinarrizkoak  👣

Lehenik eta behin, teklatua gaztelerazko konfigurazioan ezarriko dugu erosoago lan egin ahal izateko.

```bash
loadkeys es
```

Haunditu letra tamaiña behar izatekotan.

```bash
setfont ter-132b
```

Egizatatu interneta daukagula ping eginez.

![Alt text](images/Pasted%20image%2020231214084912.png)


# RAID 0 bat prestatu 💽💽

Hurrengo agindua erabiliz ikusi dezakegu zein unitate dauzkagun eta beren partizioak. Beherko irudian ikusten da momentuz unitate dauzkagula, eta gure diska gogorrak **sda** eta **sdb** izango dira.

```bash
lsblk
```

Jarraitu baino lehen egizatatu interneta daukagula ping eginez.


![Alt text](images/Pasted%20image%2020231214084912.png)

---

`sgdisk` programa erabiliko dugu partizioak egiteko parametro bezala gure disko gogorraren helbidea emango diogu.

```bash
sgdisk -n 1:0:+500M -t 1:ef00 -c 1:"EFI System" /dev/sda
sgdisk -n 2:0:+8G -t 2:fd00 -c 2:"Linux RAID" /dev/sda
sgdisk -n 3:0:0 -t 3:fd00 -c 3:"Linux RAID" /dev/sda
```

*Okertzen bazarete partizioak ezabatzeko erabili `sgdisk -Z /dev/sda`*

Kopiatu partizio taula `sda` diskotik `sdb` diskora:

```bash
sgdisk /dev/sda -R /dev/sdb -G
```

## MDADM programa instalatu
mdadm, raidak sortzeko eta kudeatzeko programa bat da. 

Eguneratu pacman eta instalatu programa.

```bash
pacman -Sy
```
```bash
pacman -S mdadm
```

Partizio birtuala bat sortuno dugu `/dev/md0` izenarekin. Aurreko partizioak `/dev/sda2` eta `/dev/sdb2` bat bilakatuko dira `/dev/md0` partizioan.

Berdina egingo dugu `/dev/md1` sortzeko, `/dev/sda3` eta  `/dev/sdb3` partizioetatik.

Hurrengo bi aginduak erabili:

```bash
mdadm -Cv /dev/md0 -l0 -n2 /dev/sd[a-b]2
mdadm -Cv /dev/md1 -l0 -n2 /dev/sd[a-b]3
```

Hurrengo agindua goiko aginduaren baliokidea da, luzeagoa baina ulergarriagoa:


*mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sd[a-b]2*


Frogatu  `lsblk` agindua.

![alt text](images/image-13.png)



# Partizioak, formatoa eta muntaia

## Partizio taulak garbitu

```bash
sgdisk -Z /dev/md0
sgdisk -Z /dev/md1
```

## Partizioak sortu 🍕

Gure swap diskoa **md0** izango da.

```bash
sgdisk -N 1 -t 1:8300 -c 1:"Linux filesystem" /dev/md0
```
Gure root diskoa **md1** izango da.

```bash
sgdisk -N 1 -t 1:8200 -c 1:"Linux swap" /dev/md1
```



## Partizioak formateatu ℹ️

Orain partizio bakoitzari dagokion formatua ezarriko diogu hurrengo komandoak erabiliz.

Swap partizioa

```bash
mkswap /dev/md1p1
```
eta swap aktibatzeko
```bash
swapon /dev/md1p1
```

Root partizioa

```bash
mkfs.ext4 /dev/md0p1
```

Boot partizioa

```bash
mkfs.fat -F 32  /dev/sda1
```

Zihurtatu formato guztiak zuzenak direla `lsblk -f` agindua idatziz.

![alt text](images/image-15.png)

## Partizioak montatu 🏇

Lehenik root partizioa montatuko dugu.<mark style="background: #FFB8EBA6;"> Beharrezkoa da hau lehen montatzea zere boot rooten azpian egongo da.</mark>

```bash
mount /dev/md0p1 /mnt
```

Boot partizioa /mnt/boot karpetan montatuko dugu, beti root montatu eta gero!

```bash
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mkdir /mnt/boot/EFI
```
--- 
Packstrap erabiliz funtzezko pakete batzuk instalatuko ditugu, hauek gure linuxeko sistemaren fitzategi ezagun asko gehituko dituzte zeren momentuz /mnt hutsik dago.

```bash
timedatectl set-ntp true

pacstrap /mnt linux linux-firmware nano networkmanager grub efibootmgr mdadm amd-ucode base base-devel
```

Izan daiteke erroreren bat izatea instalazioan zehar. Deskarga kodeak sarritan matxuratzen dira, saiatu hurrengo aginduarekin:
```bash
pacman -Sy archlinux-keyring
```

* Oharra: Deskarga nahiko handia denez, une egokia da hau bukatzean <mark style="background: #ABF7F7A6;">virtual boxen snapshot bat egitea</mark>, horrela zerbat txarto badoa puntu honetara vuelta genezake. 
---

### Fstab eta MDADM cofigurazio fitxategiak sortu

Fstab fitxategia sistema eragileari esaten dio nola montatu behar diren partizioak. Horrela, sistema pizterakoan automatikoki montatuko dira eta aurreko pausoak  ez ditugu egin behar.

```bash
genfstab -U /mnt > /mnt/etc/fstab
```

Antzera, konfigurazio RAIDArena gorde egingo dugu, horrela gure uneko raid konfigurazioa ezarriko da sistema pizterakoan.
```bash
mdadm --detail --scan --verbose >> /mnt/etc/mdadm-conf
```

## Sisteman sartu 🏠

Hurrengo aginduarekin */mnt* sartzen gara, gogoratu mnt- root montatuta dagoela, hau da, gure sistema eragilearen erroa /.

```bash
arch-chroot /mnt
```


---

# Sistema konfiguratzen ⚙️

## Erabiltzaileak 👥

### Root pasahitza 🗝️

Lehenik eta behin, root bezala gauzenez, passwd komandoa erabili pasahitz berria ezartzeko root-eri.

```bash
passwd
```

---
### Erabiltzaile arrunta sortu 🙍

Dakizuenez, ez da egokia lan orokorrak root bezala egitea arriskua haundiak baitauzka, beraz erabiltzaile berri bat sortuko dugu eta root baimenak emango dizkiogu behar izatekotan root bezala komandoak erabiltzeko.

```bash
useradd -m mikel
passwd mikel
```
---
Orain, erabiltzailea *wheel* taldeari gehituko diogu, *sudo su* edo *sudo* egin ahal izateko lehen aipa bezala

```bash
usermod -aG wheel mikel
```

- Ikusi erabiltzaile baten taldeak `groups mikel` erabiliz, bi talde agertu beharko lirateke, wheel eta mikel (defektuzko taldea)
---
### **sudoers** fitxategia editatu

Sudoers fitxategia, konfigurazio fitxategi bat da eta */etc/sudoers* rutan dago kokatuta.

Segurtasunaren kudeaketarako erabiltzen da adibidez, sudo erabiltzean pasahitza eskatu ala ez ezarri al da beste gauza batzuen artean.

---

Orain, sudo paketea instalatuko dugu pacman erabiliz

```bash
pacman -S sudo
```

Baita fitxategia editatzeko editore batzuk instalatu beharko ditugu, nano instalatuko dugu.

```bash
pacman -S nano
```

---
Zabaldu editatzeko sudoers fitxategia 

```bash
nano /etc/sudoers
```

Kendu iruzkina `%wheel ALL=(ALL:ALL) ALL` lineari.

-<mark style="background: #FF5582A6;"> NOPASSWD lineari komentarioa kentzekotan ez luke pasahitza eskatuko wheel taldekidei sude egitean baina hau ez da oso egokia seguratasunaren aldetik.</mark>


![Alt text](images/Pasted%20image%2020231214130741.png)

---
## Hizkuntzak 💬

### Programen hizkuntzak

Nano erabiliz zabaldu */etc/locale.gen* fitxategia. Fitxategi hau, etc dauden fitxategi asko bezala konfiguraziorako da, hizkuntza asko izango ditu ezarrita barnean baina adi gehienak komentatua daudela. 


![Alt text](images/Pasted%20image%2020231214133128.png)

Gure lana gaztelerazkoari eta ingelesekoari iruzkina kentzea da.
1. Bilatu `Cntr + W` erabiliz  *en_US* eta iruzkina kendu
2. Bilatu `Cntr + W` erabiliz *es_ES* eta iruzkina kendu
3. Gorde eta atera 

Azkenik, locale-gen programa erabiliko dugu ezarritako hizkuntzen hitzak sortzeko.

```bash
locale-gen
```

### Teklatuaren hizkuntza kontsolan ⌨️

Terminala zabaldu genuenean, lehenik egin dugun gauza gazteleraz jartzea izan zen. Hau egin behar ez izateko eta defektuz gazteleraz agertzeko sortu hurrengo fitxategia.

```bash
nano /etc/vconsole.conf
```

Idatzi  `KEYMAP=es` barnean eta gorde.

## Host izena
echo mikel-pc > /etc/hostname
echo "127.0.0.1  localhost" > /etc/hosts
echo "::1  localhost" > /etc/hosts
echo "127.0.0.1  mikel-pc" > /etc/hosts

## Konfigurazio batzuk aldatu

Mdadm raiderako programak, zenbait konfigurazio gehigo sartu behar dira. 

```bash
nano /etc/mkinitcpio.conf
```
![alt text](images/image-17.png)
![alt text](images/image-16.png)

```bash
mkinitcpio -P
```

Kendu emailaren iruzkina 
```bash
 nano /etc/mdadm.conf
```
![alt text](images/image-18.png)

## Grub instalatzen ☣️

Grub, linuxeko boot loadera da, menu bat eskeintzen du sistema pizterakoan zenbait pizteko modu autatzeko. 

Dual boot ubuntu/windows instalatu genuenean honek zein sistema eragile nahi genuen hautatzeko aukera emoten zigun.

```bash
grub-install --boot-directory=/boot --bootloader-id=ArchLinux --target=x86_64-efi --efi-directory=/boot --recheck
```

Sortu gruberako konfigurazio fitxategia

```bash
grub-mkconfig -o /boot/grub/grub.cfg
```

Bikoiztu boot partizioa bigarren diskoan:
```bash
umount /dev/sda1
dd if=/dev/sda1 of=/dev/sdb1
```

Gehitu bigarren diska UEFI boot zerrendara
```bash
efibootmgr -c -g -d /dev/sdb1 -p 1 -L "ArchLinux #2" -l "\EFI\ArchLinux\grubx64.efi"
```
---
## Sistema berrebiarazi ♻️

Puntu honetan, irten rootetik `exit` eginez eta `shutdown -r` erabili live cd-ko kontextuan gaudenean era orain grub zabaltzen den eta sistema era egokian pizten den guk ezarritako konfigurazio guztiekin.

- Grub zabaltzen ez bada eta arch linuxek live cd-a zabaltzen bada, sakatu `F12` pizterakoan eta hautatu diska gogorra. Gruben menua agertu beharko litzateke.
  
![Alt text](images/Pasted%20image%2020231214140230.png)

* Oharra: <mark style="background: #ABF7F7A6;">Une egokia da hau bukatzean virtual boxen snapshot bat egitea, horrela zerbat txarto badoa puntu honetara vuelta genezake.</mark> 
---

# Sistema Konfiguratzen - 2 ⚙️

## Interneterako serbitzuak konfiguratu 📶

Lehenik eta behin, `ping www.googl.es` egiten saiatzen bagara ikusiko dugu internetik ez daukagula. 

Hau gertatzen da sare kudeaketarako serbitzua piztuta ez dagoelako. Beraz bi gauza egingo ditugu:

1. NetworkManager serbitzua piztu 
2. Hurrengaroako, serbitzua automatikoki pizteko ezarri


```bash
systemctl start NetworkManager.service 
```

```bash
systemctl enable NetworkManager
```

Horain, ping funtzionatu beharko luke, frogatu `ping www.googl.es`.
