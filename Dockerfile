FROM ubuntu:18.04
MAINTAINER Austin Songer (austin@songer.pro)
ARG DEBIAN_FRONTEND=noninteractive
############################################
RUN apt-get update && apt-get install -y sudo
RUN adduser --disabled-password --gecos '' sneakattack
RUN adduser sneakattack sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER sneakattack
############################################
# .bashrc
COPY /configs/.bashrc /root/.bashrc
# prep.sh
COPY /scripts/prep.sh /opt/prep.sh
RUN sudo chmod +x  /opt/*.sh
# RUN bash chmod +x /opt/prep.sh
RUN bash -c /opt/prep.sh
RUN mkdir /opt/tools
RUN sudo chmod +x /opt/tools/*.sh
#============================================================
# AV Bypass
COPY /scripts/tools/av-bypass.sh /opt/tools/av-bypass.sh
RUN bash -c /opt/tools/av-bypass.sh
#
# Code Audit
COPY /scripts/tools/code-audit.sh /opt/tools/code-audit.sh
RUN bash -c /opt/tools/code-audit.sh
#
# Custom Lists
COPY /scripts/tools/custom-list.sh /opt/tools/custom-list.sh
RUN bash -c /opt/tools/custom-list.sh
#
# Exploitation
COPY /scripts/tools/exploitation.sh /opt/tools/exploitation.sh
RUN bash -c /opt/tools/exploitation.sh
#
# Information Gathering
COPY /scripts/tools/information-gathering.sh /opt/tools/information-gathering.sh
RUN bash -c /opt/tools/information-gathering.sh
#
# Mobile
COPY /scripts/tools/mobile.sh /opt/tools/mobile.sh
RUN bash -c /opt/tools/mobile.sh
#
# OSX
COPY /scripts/tools/osx.sh /opt/tools/osx.sh
RUN bash -c /opt/tools/osx.sh

# Password Attacks
COPY /scripts/tools/password-attacks.sh /opt/tools/password-attacks.sh
RUN bash -c /opt/tools/password-attacks.sh

# Pivoting
COPY /scripts/tools/pivoting.sh /opt/tools/pivoting.sh
RUN bash -c /opt/tools/pivoting.sh

# Post-Exploitation
COPY /scripts/tools/post-exploitation.sh /opt/tools/post-exploitation.sh
RUN bash -c /opt/tools/post-exploitation.sh

# PowerShell
COPY /scripts/tools/powershell.sh /opt/tools/powershell.sh
RUN bash -c /opt/tools/powershell.sh

# Pre-Engagement
COPY /scripts/tools/pre-engage.sh /opt/tools/pre-engage.sh
RUN bash -c /opt/tools/pre-engage.sh

# Reporting
COPY /scripts/tools/reporting.sh /opt/tools/reporting.sh
RUN bash -c /opt/tools/reporting.sh

# Reverse Engineering
COPY /scripts/tools/reverse.sh /opt/tools/reverse.sh
RUN bash -c /opt/tools/reverse.sh

# Threat Modeling
COPY /scripts/tools/threat-modeling.sh /opt/tools/threat-modeling.sh
RUN bash -c /opt/tools/threat-modeling.sh

# Vulnerability Analysis
COPY /scripts/tools/vulnerability.sh /opt/tools/vulnerability.sh
RUN bash -c /opt/tools/vulnerability.sh

# Webshells
COPY /scripts/tools/webshells.sh /opt/tools/webshells.sh
RUN bash -c /opt/tools/webshells.sh

# Windows Tools
COPY /scripts/tools/windows-tools.sh /opt/tools/windows-tools.sh
RUN bash -c /opt/tools/windows-tools.sh

# Wireless
COPY /scripts/tools/wireless.sh /opt/tools/wireless.sh
RUN bash -c /opt/tools/wireless.sh






























RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf /var/cache/apt/*

WORKDIR /tools

