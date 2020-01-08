FROM ubuntu:18.04

## Install ProtonVPN-CLI + Privoxy + Divers

#RUN apt-get update && \
#    apt-get -y install nano htop && \
#    apt-get -y install openvpn python dialog wget git iptables && \
#    git clone "https://github.com/protonvpn/protonvpn-cli" && \
#    cd protonvpn-cli \
#    ./protonvpn-cli.sh --install

## Proton-V2
RUN apt-get update && \
    apt-get install -y openvpn dialog python3-pip python3-setuptools && \
    pip3 install protonvpn-cli

## Creation TUN/TAP
RUN mkdir -p /dev/net && \
    mknod /dev/net/tun c 10 200 && \
    chmod 666 /dev/net/tun
