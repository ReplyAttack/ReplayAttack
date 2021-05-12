#!/bin/bash
#
# Preps the docker container for SneakAttack
#
# Author: Austin Songer
#
set -Eeuo pipefail

sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
sudo apt-get upgrade -y

sudo add-apt-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get -y install oracle-java8-installer

sudo DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

sudo apt-get install -yq libwebkitgtk-1.0-0 libmysqlclient-dev libjpeg-dev libnetfilter-queue-dev  gparted git gnupg  ssh libpcap0.8-dev libimage-exiftool-perl aptitude p7zip-full proxychains build-essential libreadline-dev libssl-dev libpq5 libpq-dev libreadline5 libsqlite3-dev libpcap-dev git-core autoconf postgresql pgadmin3 curl zlib1g-dev libxml2-dev libxslt1-dev libyaml-dev curl zlib1g-dev gawk bison libffi-dev libgdbm-dev libncurses5-dev libtool sqlite3 libgmp-dev gnupg2 dirmngr

# sudo curl http://apt.metasploit.com/metasploit-framework.gpg.key | sudo apt-key add -
# sudo echo 'deb http://apt.metasploit.com/ lucid main' > /etc/apt/sources.list.d/metasploit-framework.list

sudo tee -a /etc/apt/sources.list<<EOF
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib
EOF


sudo apt-get install -y python3 python-yara python-paramiko python-distorm3 python-beautifulsoup python-pygresql python-pil python-pycurl python-magic python-pyinotify python-configobj python-pexpect python-msgpack python-requests python-pefile python-ipy python-openssl python-pypcap python-dns python-dnspython python-crypto python-cryptography python-dev python-twisted python-nfqueue python-scapy python-capstone python-setuptools python-urllib3 python3-pip php7.2-cli php7.2-curl python-notify python-impacket golang-go

sudo apt update -y
sudo apt upgrade -y



