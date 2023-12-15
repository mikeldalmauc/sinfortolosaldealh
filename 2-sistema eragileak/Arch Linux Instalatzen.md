---
tags:
  - SistemasOperativos
  - Arch
---

# Ingurune virtuala ezarri
## Deskargatu ISOa

Deskargatu isoa arch linuxen webgune ofizialetik, eta beheko estekatik
[Arch Linux Official website](https://archlinux.org/download/)

![[Pasted image 20231214083636.png]]


---
## VBoxen makina sortu

Sortu makina berri bat beheko ezaugarriekin, <mark style="background: #FF5582A6;">2Gb Ram eta 20 Gb disko gogo</mark>r, prosezadore batekin.

![[Pasted image 20231214083910.png]]

![Alt text](images/Pasted%20image%2020231214083910.png)

![[Pasted image 20231214083957.png]]

![Alt text](images/Pasted%20image%2020231214083957.png)

![[Pasted image 20231214084010.png]]

![Alt text](images/Pasted%20image%2020231214084010.png)

---
# Partizioak, formatoa eta muntaia

## Partizioak sortu

Lehenik eta behin, teklatua gaztelerazko konfigurazioan ezarriko dugu erosoago lan egin ahal izateko.

```bash
loadkeys es
```

Hurrengo agindua erabiliz ikusi dezakegu zein disko dauzkagun eta beren partizioak. Beherko irudian ikusten da momentuz 3 disko dauzkagula, eta gure diska gogorra **sda** izango da.

```bash
lsblk
```
![[Pasted image 20231214084607.png]]

![Alt text](images/Pasted%20image%2020231214084607.png)

---

Jarraitu baino lehen egizatatu interneta daukagula ping eginez.

![[Pasted image 20231214084912.png]]

![Alt text](images/Pasted%20image%2020231214084912.png)

---

Cfdisk programa erabiliko dugu partizioak egiteko parametro bezala gure disko gogorraren helbidea emango diogu.

```bash
cfdisk /dev/sda
```

Lehengo pausoa izango da labela aukeratzea, msdos aukeratuko dugu.

![[Pasted image 20231214085236.png]]

![Alt text](images/Pasted%20image%2020231214085236.png)

---
Bigarren pausoan,<mark style="background: #FFB8EBA6;"> hiru partizio egingo ditugu, bata booterako, bestea sistema eragilerako eta azkena swaperako</mark>. Huerrengo memoria ezarpenarekin. Adi swap partizioari mota aldatu behar zaiola.

![[Pasted image 20231214085929.png]]

![Alt text](images/Pasted%20image%2020231214085929.png)


lsblk berriro erabiliz, gure diskaren partizioak ikusi beharko genituzke.

![[Pasted image 20231214090148.png]]

![Alt text](images/Pasted%20image%2020231214090148.png)


---

## Partizioak formateatu

Orain partizio bakoitzari dagokion formatua ezarriko diogu hurrengo komandoak erabiliz.

- Boot partizioa
```bash
mkfs.fat -F 32 /dev/sda1
```

- Sistema eragilerako
```bash
mkfs.ext4 /dev/sda2
```

- Swap partiziorako
```
mkswap /dev/sda3
```

eta swap aktibatzeko
```bash
swapon
```

---
## Partizioak montatu

Lehenik root partizioa montatuko dugu.<mark style="background: #FFB8EBA6;"> Beharrezkoa da hau lehen montatzea zere boot rooten azpian egongo da.</mark>

```bash
mount /dev/sda2 /mnt
```

Boot partizioa /mnt/boot karpetan montatuko dugu, beti root montatu eta gero!

```bash
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
```
--- 
Packstrap erabiliz funtzezko pakete batzuk instalatuko ditugu, hauek gure linuxeko sistemaren fitzategi ezagun asko gehituko dituzte zeren momentuz /mnt hutsik dago.

```bash
pacstrap /mnt linux linux-firmware networkmanager grub wpa_supplicant base base-devel
```

* Oharra: Deskarga nahiko handia denez, une egokia da hau bukatzean <mark style="background: #ABF7F7A6;">virtual boxen snapshot bat egitea</mark>, horrela zerbat txarto badoa puntu honetara vuelta genezake. 
---
### Fstab fitxategia sortu

Fstab fitxategia sistema eragileari esaten dio nola montatu behar diren partizioak. Horrela, sistema pizterakoan automatikoki montatuko dira eta aurreko pausoak  ez ditugu egin behar.

```bash
genfstab -U /mnt > /mnt/ect/fstab
```

---
## Sisteman sartu

Hurrengo aginduarekin */mnt* sartzen gara, gogoratu mnt- root montatuta dagoela, hau da, gure sistema eragilearen erroa /.

```bash
arch-chroot /mnt
```


---

# Sistema konfiguratzen

## Erabiltzaileak

### Root pasahitza

Lehenik eta behin, root bezala gauzenez, passwd komandoa erabili pasahitz berria ezartzeko root-eri.

```bash
passwd
```

---
### Erabiltzaile arrunta sortu

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

Baita fitxategia editatzeko editore batzuk instalatu beharko ditugu, vim eta nano instalatuko ditugu.

```bash
pacman -S vim nano
```

---
Zabaldu editatzeko sudoers fitxategia 

```bash
nano /etc/sudoers
```

Kendu iruzkina `%wheel ALL=(ALL:ALL) ALL` lineari.

-<mark style="background: #FF5582A6;"> NOPASSWD lineari komentarioa kentzekotan ez luke pasahitza eskatuko wheel taldekidei sude egitean baina hau ez da oso egokia seguratasunaren aldetik.</mark>

![[Pasted image 20231214130741.png]]

![Alt text](images/Pasted%20image%2020231214130741.png)


---




## Hizkuntzak

### Programen hizkuntzak

Nano erabiliz zabaldu */etc/locale.gen* fitxategia. Fitxategi hau, etc dauden fitxategi asko bezala konfiguraziorako da, hizkuntza asko izango ditu ezarrita barnean baina adi gehienak komentatua daudela. 

![[Pasted image 20231214133128.png]]
Gure lana gaztelerazkoari eta ingelesekoari iruzkina kentzea da.
1. Bilatu `Cntr + W` erabiliz  *en_US* eta iruzkina kendu
2. Bilatu `Cntr + W` erabiliz *es_ES* eta iruzkina kendu
3. Gorde eta atera 

Azkenik, locale-gen programa erabiliko dugu ezarritako hizkuntzen hitzak sortzeko.

```bash
locale-gen
```


### Teklatuaren hizkuntza kontsolan

Terminala zabaldu genuenean, lehenik egin dugun gauza gazteleraz jartzea izan zen. Hau egin behar ez izateko eta defektuz gazteleraz agertzeko sortu hurrengo fitxategia.

```bash
nano /etc/vconsole.conf
```

Idatzi  `KEYMAP=es` barnean eta gorde.

---
## Grub instalatzen

Grub, linuxeko boot loadera da, menu bat eskeintzen du sistema pizterakoan zenbait pizteko modu autatzeko. 

Dual boot ubuntu/windows instalatu genuenean honek zein sistema eragile nahi genuen hautatzeko aukera emoten zigun.

```bash
grub-install /dev/sda
```

Sortu gruberako konfigurazio fitxategia

```bash
grub-mkconfig -o /boot/grub/grub.cfg
```

---
## Ordenagailuaren izena (hostname)

Beti bezela, /etc-n sortuko dugu fitxategi bat hostname izenarekin eta gure ordenagailuaren izenarekin.

```bash
echo mikel-pc > /etc/hostname
```

---
## Hosts fitxategia

Fitxategi hau alias batxuk izango ditu, adibidez localhost -> 127.0.0.1 bati egingo dio erreferentzia.
 
```
nano /etc/hosts
```

Hurrengo lerroak gehitu, adi mikel-pc jartzen duen tokia zuen hostname jarri behar duela.

```bash
127.0.0.1    localhost
::1          localhost
127.0.0.1    mikel-pc.localhost mikel-pc
```



## Neofetch instalatu

Instalatu neofetch programatxoa, hau sistemaren informazioa erakutziko digu. Frogatu `neofetch` erabiltzen.

```bash
pacman -S neofetch
```

![[Pasted image 20231214135552.png]]

![Alt text](images/Pasted%20image%2020231214135552.png)

## Sistema berrebiarazi

Puntu honetan, irten rootetik `exit` eginez eta `reboot` erabili live cd-ko kontextuan gaudenean era orain grub zabaltzen den eta sistema era egokian pizten den guk ezarritako konfigurazio guztiekin.

- Grub zabaltzen ez bada eta arch linuxek live cd-a zabaltzen bada, sakatu `F12` pizterakoan eta hautatu diska gogorra. Gruben menua agertu beharko litzateke.
  
![[Pasted image 20231214140230.png]]

![Alt text](images/Pasted%20image%2020231214140230.png)


---


# 