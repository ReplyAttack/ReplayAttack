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

sudo apt-get install -yq aptitude vlan reaver pyrit thc-ipv6 netwox nmap phantomjs nbtscan wireshark-qt tshark vlan dsniff tcpdump openjdk-8-jre p7zip openvpn libwebkitgtk-1.0-0 libssl-dev libmysqlclient-dev libjpeg-dev libnetfilter-queue-dev ettercap-text-only ghex pidgin pidgin-otr traceroute lft gparted autopsy subversion git gnupg htop ssh libpcap0.8-dev libimage-exiftool-perl aptitude p7zip-full proxychains curl terminator hydra hydra-gtk medusa irssi gnome-tweak-tool libtool build-essential rdesktop sshfs bzip2 extundelete rpcbind nfs-common gimp iw ldap-utils ntfs-3g samba-common samba-common-bin steghide whois aircrack-ng gnome-screenshot eog laptop-mode-tools openconnect gengetopt byacc flex cmake ophcrack gdb stunnel4 socat chromium-browser swftools hping3 tcpreplay tcpick gufw xtightvncviewer scalpel foremost unrar rar secure-delete yersinia vmfs-tools net-tools gstreamer1.0-plugins-bad freerdp-x11 libxfreerdp-client1.1 qemu-kvm qemu-utils binwalk qemu-system-x86 gvfs-fuse xdg-user-dirs gnome-applets-data gnome-applets git-core autoconf postgresql pgadmin3 screen keepass2

sudo apt-get install -y python-yara python-paramiko python-distorm3 python-beautifulsoup python-pygresql python-pil python-pycurl python-magic python-pyinotify python-configobj python-pexpect python-msgpack python-requests python-pefile python-ipy python-openssl python-pypcap python-dns python-dnspython python-crypto python-cryptography python-dev python-twisted python-nfqueue python-scapy python-capstone python-setuptools python-urllib3 python3-pip python-pip ruby ruby-dev ruby-bundler php7.2-cli php7.2-curl python-notify python-impacket golang-go

sudo apt-get install -y libappindicator1 libreadline-dev libcapstone3 libcapstone-dev libssl-dev zlib1g-dev libxml2-dev libxslt1-dev libyaml-dev libffi-dev libssh-dev libpq-dev libsqlite-dev libsqlite3-dev libpcap-dev libgmp3-dev libpcap-dev  libpcre3-dev libidn11-dev libcurl4-openssl-dev libpq5 libreadline5 libappindicator1 libindicator7 libnss3 libxss1 libssl1.0.0 libncurses5-dev libncurses5
curl http://apt.metasploit.com/metasploit-framework.gpg.key | sudo apt-key add -
sudo echo 'deb http://apt.metasploit.com/ lucid main' > /etc/apt/sources.list.d/metasploit-framework.list



