FROM ubuntu:18.04

## Install ProtonVPN-CLI + Privoxy + Divers
RUN apt-get update && \
    apt-get -y install privoxy iproute2 nano htop net-tools && \
    apt-get -y install openvpn python dialog wget git iptables && \
    git clone "https://github.com/protonvpn/protonvpn-cli" && \
    cd protonvpn-cli && \
    ./protonvpn-cli.sh --install && \
    printf '%s\n' 7zXDARq-dXptmPu7C.osMAEb NpD1BDMREDcCcWweinapbmqu 1 N Y | protonvpn-cli --init

## Proton-V2
#    apt-get install -y openvpn dialog python3-pip python3-setuptools && \
#    pip3 install protonvpn-cli

## Creation TUN/TAP
#RUN mkdir -p /dev/net && \
#    mknod /dev/net/tun c 10 200 && \
#    chmod 600 /dev/net/tun && \
#    route add -net 192.168.72.0/24 gw 172.17.0.1 dev eth0


COPY config /etc/privoxy/config

ENTRYPOINT [ "privoxy", "--no-daemon" ]
CMD [ "/etc/privoxy/config" ]

EXPOSE 8118
