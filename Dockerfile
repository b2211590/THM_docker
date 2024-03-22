# download kalilinux image
FROM kalilinux/kali-rolling

# configure TUN/TAP device for virtual handling of network communications
RUN mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200

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
                   iproute2 whois curl

# set the working directory
WORKDIR /root
