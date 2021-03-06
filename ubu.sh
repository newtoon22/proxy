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
sudo apt-get -y install update
sudo apt-get -y install aptitude
sudo aptitude -y install tor
sudo service tor start
echo
echo
echo
echo =================================
sudo service tor status ; echo
echo
echo =================================
sudo aptitude -y install proxychains
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
