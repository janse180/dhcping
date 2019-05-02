FROM debian:stretch-slim

RUN apt-get update 
RUN apt-get -y install dhcping netbase

ENTRYPOINT ["/usr/sbin/dhcping"]
