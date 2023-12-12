
#Hacking #SistemasOperativos
## Dockerfile

```
# Dockerfile kali-light

# Official base image
FROM kalilinux/kali-rolling

# Apt
RUN apt -y update && apt -y upgrade && apt -y autoremove && apt clean

# Tools
RUN apt install aircrack-ng crackmapexec crunch curl dirb dirbuster dnsenum dnsrecon dnsutils dos2unix enum4linux exploitdb ftp git gobuster hashcat hping3 hydra impacket-scripts john joomscan masscan metasploit-framework mimikatz nasm ncat netcat-traditional nikto nmap patator php powersploit proxychains python3-pip python2 python3 recon-ng responder samba samdump2 smbclient smbmap snmp socat sqlmap sslscan theharvester vim wafw00f weevely wfuzz whois wordlists wpscan -y --no-install-recommends

# Alias
RUN echo "alias l='ls -al'" >> /root/.bashrc
RUN echo "alias nse='ls /usr/share/nmap/scripts | grep '" >> /root/.bashrc
RUN echo "alias scan-range='nmap -T5 -n -sn'" >> /root/.bashrc
RUN echo "alias http-server='python3 -m http.server 8080'" >> /root/.bashrc
RUN echo "alias php-server='php -S 127.0.0.1:8080 -t .'" >> /root/.bashrc
RUN echo "alias ftp-server='python -m pyftpdlib -u \"admin\" -P \"S3cur3d_Ftp_3rv3r\" -p 2121'" >> /root/.bashrc

# Set working directory to /root
WORKDIR /root

```

Crear la imagen y el directorio con los datos

```bash
docker build -t mykali-light .
mkdir ~/container-data
```

Ejecutar el contendor en la red host

```bash
docker run --rm -i -t -v ~/container-data:/root/data/ --network host mykali-light 
```
*Notese el uso de -i -t para indicar que es una ejecución interactiva, ya que al no tener interfaz gráfica tenemos que conectarnos al contenedor por consola.*

*Para abir nuevas consolas*
`docker run -it nombre-contenedor bash`


# Refs

Ver : https://rushichaudhari.github.io/posts/2020-05-14-docker-vnc/

Ver para MacVlan : https://itfrontech.com/docker-para-inexpertos-parte-seis-macvlan-dhcp-pipework/ ^bbe842

[[Direcciones IP (IPV4 y IPV6)]]

