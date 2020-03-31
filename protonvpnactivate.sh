#!/usr/bin/expect
spawn protonvpn init
expect "username"
send "7zXDARq-dXptmPu7C.osMAEb\r"
expect "password"
send "NpD1BDMREDcCcWweinapbmqu\r"
expect "password"
send "NpD1BDMREDcCcWweinapbmqu\r"
expect "plan"
send "1\r"
expect "other"
send "1\r"
expect "good?"
send "Y\r"
expect eof

