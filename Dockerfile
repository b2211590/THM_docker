# download kalilinux image
FROM kalilinux/kali-rolling

# update apt and install some tools
RUN apt -y update && \
    apt -y dist-upgrade && \
    apt -y autoremove && \
    apt clean && \
    apt -y install nmap \
                   gobuster \
                   enum4linux \
                   hydra \
                   peass \
                   john \
                   ssh \
                   nano \
                   openvpn \
                   iputils-ping \
                   iproute2 \
                   whois \
                   curl

# set the working directory
WORKDIR /root

# copy the necessary file
COPY vpn.sh .
