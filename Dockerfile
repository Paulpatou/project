FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
## Install ProtonVPN-CLI + Privoxy + Divers

#RUN apt-get update && \
#    apt-get -y install nano htop && \
#    apt-get -y install openvpn python dialog wget git iptables && \
#    git clone "https://github.com/protonvpn/protonvpn-cli" && \
#    cd protonvpn-cli \
#    ./protonvpn-cli.sh --install && \
#    printf '%s\n' Y 7zXDARq-dXptmPu7C.osMAEb NpD1BDMREDcCcWweinapbmqu 1 N Y


## Proton-V2
RUN apt-get update && \
    apt-get install -y openvpn dialog python3-pip python3-setuptools expect && \
    pip3 install protonvpn-cli
#    printf '%s\n' 7zXDARq-dXptmPu7C.osMAEb NpD1BDMREDcCcWweinapbmqu NpD1BDMREDcCcWweinapbmqu 1 1 Y | 'protonvpn init'


## Creation TUN/TAP
RUN mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 666 /dev/net/tun
