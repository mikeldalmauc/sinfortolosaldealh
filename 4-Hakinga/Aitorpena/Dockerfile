FROM kalilinux/kali-rolling

RUN apt update
RUN apt dist-upgrade -y
RUN apt install -y nikto nmap 

RUN RUN echo "root:root" | chpasswd

ENTRYPOINT ["tail", "-f", "/dev/null"]