# project
For Privoxy 

docker build -t privoxy . \
docker run -p 8118:8118 privoxy:latest

For Privoxy + VPN \
Privoxy:latest \
docker run --cap-add=NET_ADMIN --device /dev/net/tun -p 8118:8118 privoxy:latest

For protonvpn-cli-ng:latest \
docker run --cap-add=NET_ADMIN --device /dev/net/tun protonvpn-cli-ng:latest



