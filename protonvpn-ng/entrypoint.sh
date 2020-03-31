#!/usr/bin/bash

/usr/bin/expect /tmp/protonvpnactivate.sh
protonvpn c -f
exec "$@"

