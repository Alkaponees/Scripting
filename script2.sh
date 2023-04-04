#!/bin/bash
uptime >> script2.txt
whoami >> script2.txt
w >> script2.txt
lastlog && last >> script2.txt
ps -eo pid,user,%cpu,command --sort=-%cpu | head -n 10 >>script2.txt
ps -eo pid,user,%mem,command --sort=-%mem | head -n 10 >>script2.txt
free -t >> script2.txt
#https://www.redhat.com/sysadmin/linux-commands-vmstat
vmstat >> script2.txt
df -h >> script2.txt
du -h ${HOME} >> script2.txt
cat script2.txt
