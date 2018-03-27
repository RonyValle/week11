#!/bin/bash
#Rony Valle
#chapter 9 Script

#The following shell script is for week7 chapter9 Understanding your network and cofiguration

#The following command shows you the active IP address in your computer

echo "===> The following are your IP addresses:"

ifconfig -a

#now lets ping Saint Paul college, but fist lets get the IP address using the following command:

echo "===> This is the IP address of our College"

host www.saintpaul.edu

#using the ping command to ping our College with 3 packets

echo
echo "===> Lest Ping our College with 3 packets"
echo
ping www.saintpaul.edu -c 3

#The route we take to get to the google.com website with disabled hostname lookups

traceroute -n google.com

#what are the contents of our /etc/hosts file

echo
echo "===> The contents of your hosts file"
cat /etc/hosts

#let's now take a look at what ports are open in our local machine

echo
echo "===> Open connections on your local machine"
echo
netstat -nt

echo "===> Your current IP configuration table settings"

sudo iptables -L

echo "===> The ARP cache with disabled reverse DNS lookups"

arp -n

