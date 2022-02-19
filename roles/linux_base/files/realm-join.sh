#!/usr/bin/expect

spawn realm join DOMAIN.NET -U Administrator --computer-ou OU=Computers,DC=domain,DC=net
expect "Password for Administrator:"
send "MyPassword123\r"
interact
