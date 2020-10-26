#!/usr/bin/expect
spawn protonvpn init
expect "username"
send "user\r"
expect "password"
send "password\r"
expect "password"
send "password\r"
expect "plan"
send "1\r"
expect "other"
send "1\r"
expect "good?"
send "Y\r"
expect eof

