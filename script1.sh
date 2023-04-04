#!/bin/bash
neofetch >> script1.txt
uname -a >> script1.txt
ifconfig >> script1.txt
ip a >> script1.txt
ufw >> script1.txt
cat /etc/resolv.conf /etc/sysctl.conf >> script1.txt
cat script1.txt

