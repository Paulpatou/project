FROM ubuntu:18.04

## Install ProtonVPN-CLI + Privoxy + Divers
RUN apt-get update && \
    apt-get -y install squid3 iproute2 nano htop net-tools

COPY squid.conf /etc/squid/squid.conf
COPY start.sh /
#ENTRYPOINT [ "squid" ]
#CMD [ "/etc/squid/squid.conf" ]

ENTRYPOINT ["/start.sh"]
EXPOSE 4205
