FROM debian:stretch-slim

RUN apt-get update 
RUN apt-get -y install dhcping

ENTRYPOINT ["/usr/sbin/dhcping"]
