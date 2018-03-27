#!/bin/sh
#Rony Valle
#Chapter10 Scrip

# small script that shows you what process is using a particular port 

echo "==> Choose the procol you would like scan"

for i in SSH Telnet HTTP HTTPS 
do
	echo "Type one of the following $i"
done
echo
read PICK

if [ "${PICK}" = SSH ]; then
	echo "==> This processes are using port 22 Secure Shell:"
	lsof -i:22
elif [ "${PICK}" = Telnet ]; then
	echo "==> This process are using port 23 Telnet:"
	lsof -i:23
elif [ "${PICK}" = HTTP ]; then
	echo "==> This process are using port 80 HTTP:"
	lsof -i:80
elif [ "${PICK}" = HTTPS ]; then
	echo "==> This process are  using port 443 HTTPS"
	lsof -i:443
else
	echo "==> Please choose from one of the above choices"
fi

sleep3
#using tcpdump with a count of 10 packets.

echo "==> The last 10 Packets that went through the wire:"

sudo tcpdump -c 10

sleep 3
 
#connecting to a web server using the telnet command

echo "===> connecting to Google using telnet:"

telnet www.google.com 80

#nmap scanning

echo "===> Using nmap to scan www.saintpaul.edu listening ports"

nmap www.saintpaul.edu

sleep 3
echo "===> RPC services your computer has run:"

rpcinfo -p localhost 


