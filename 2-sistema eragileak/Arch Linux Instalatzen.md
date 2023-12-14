---
tags:
  - SistemasOperativos
  - Arch
---
## Deskargatu ISOa

Deskargatu isoa arch linuxen webgune ofizialetik, eta beheko estekatik
[Arch Linux Official website](https://archlinux.org/download/)

![[Pasted image 20231214083636.png]]

---
## VBoxen makina sortu

Sortu makina berri bat beheko ezaugarriekin, 2Gb Ram eta 20 Gb disko gogor, prosezadore batekin.

![[Pasted image 20231214083910.png]]
![[Pasted image 20231214083957.png]]
![[Pasted image 20231214084010.png]]

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

---

Jarraitu baino lehen egizatatu interneta daukagula ping eginez.

![[Pasted image 20231214084912.png]]

---

Cfdisk programa erabiliko dugu partizioak egiteko parametro bezala gure disko gogorraren helbidea emango diogu.

```bash
cfdisk /dev/sda
```

Lehengo pausoa izango da labela aukeratzea, msdos aukeratuko dugu.

![[Pasted image 20231214085236.png]]

---
Bigarren pausoan, hiru partizio egingo ditugu, bata booterako, bestea sistema eragilerako eta azkena swaperako. Huerrengo memoria ezarpenarekin. Adi swap partizioari mota aldatu behar zaiola.

![[Pasted image 20231214085929.png]]

lsblk berriro erabiliz, gure diskaren partizioak ikusi beharko genituzke.

![[Pasted image 20231214090148.png]]

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

Boot partizioa /mnt/boot karpetan montatuko dugu eta root partizioa mnt-n huerro aginduak erabili boot karpeta sortzeko eta muntaia egiteko

```bash
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mount /dev/sda2 /mnt
```

--- 
Packstrap erabiliz funtzezko pakete batzuk instalatuko ditugu.

```bash
pacstrap /mnt linux linux-firmware networkmanager grub wpa_supplicant base base-devel
```

### Fstab fitxategia sortu

Fstab fitxategia sistema eragileari esaten dio nola montatu behar diren partizioak. Horrela, sistema pizterakoan automatikoki montatuko dira eta aurreko pausoak  ez ditugu egin behar.

```bash
genfstab -U /mnt > /mnt/ect/fstab
```

## Sisteman sartu

```bash
arch-chroot /mnt
```
