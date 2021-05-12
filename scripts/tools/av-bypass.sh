#!/bin/bash
#
# Av Bypass
#

## BACKDOOR FACTORY

git clone https://github.com/secretsquirrel/the-backdoor-factory.git && \ 
        cd the-backdoor-factory && \ 
        chmod +x install.sh && \
        ./install.sh && \
        cd /root/tools/


## Veil Framework
git clone https://github.com/Veil-Framework/Veil.git && \
        cd Veil && \
        ./config/setup.sh --force --silent && \
        cd /root/tools/

