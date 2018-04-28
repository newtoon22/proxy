#!/bin/bash

# Script for anonymous

# Proxy List
# https://hidemy.name/es/proxy-list/

# Check List of Proxys:
# https://hidemy.name/es/proxy-checker/

# See public IP
# wget -qO- http://ipecho.net/plain

# Test proxychain
# proxychains wget -qO- http://ipecho.net/plain

# First Install and run the TOR SERVICE
echo deb http://deb.torproject.org/torproject.org wheezy main /etc/apt/sources.list
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -
apt-get update
apt-get install deb.torproject.org-keyring
apt-get install tor
sudo service tor start
echo
echo
echo
echo =================================
sudo service stat ; echo
echo
echo =================================
sudo apt-get --yess install proxychains
sudo rm /etc/proxychains.conf
sudo cp proxychains.conf /etc/
echo
echo
echo ================================
echo Public IP
wget -qO- http://ipecho.net/plain ; echo
echo
echo
echo Test ProxyChain
proxychains wget -qO- http://ipecho.net/plain ; echo
echo =================================
exit
