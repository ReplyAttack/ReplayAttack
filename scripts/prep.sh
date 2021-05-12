#!/bin/bash
#
# Preps the docker container for SneakAttack
#
# Author: Austin Songer
#
sudo -n true

apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
sudo apt-get upgrade -y
echo "deb http://downloads.metasploit.com/data/releases/metasploit-framework/apt lucid main" >/etc/apt/sources.list.d/metasploit-framework.list
sudo apt -y install gnupg gnupg2 gnupg1 --fix-missing 
sudo apt-get install -y wget python3 git sudo locate vim python3-pip tcpdump net-tools flex #libgmp3-dev:i386
# apt download metasploit-framework --print-uris 'http://downloads.metasploit.com/data/releases/metasploit-framework/apt/pool/main/m/metasploit-framework/metasploit-framework_4.14.18+20170516093030~1rapid7-1_amd64.deb' metasploit-framework_4.14.18+20170516093030~1rapid7-1_amd64.deb 173065244 SHA256:adbd4692555b2ca9a1b4526bf8d649ccb634244c5104f6bdeeb82e4de6bc62a2 
sudo cd /tmp
sudo wget http://http.kali.org/pool/main/u/unicornscan/unicornscan_0.4.7-1kali2_amd64.deb
sudo dpkg -i ./unicornscan_0.4.7-1kali2_amd64.deb
sudo cd /root




