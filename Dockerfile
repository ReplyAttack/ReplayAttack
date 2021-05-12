FROM ubuntu:18.04

MAINTAINER Austin Songer (austin@songer.pro)

ARG DEBIAN_FRONTEND=noninteractive


# .bashrc
COPY /configs/.bashrc /root/.bashrc

# prep.sh
COPY /configs/prep.sh /root/prep.sh
RUN bash -c /root/prep.sh


