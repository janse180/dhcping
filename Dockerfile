FROM debian:stretch-slim

RUN apt-get update 
RUN apt-get -y install dhcping

FROM debian:stretch-slim
COPY --from=0 /usr/sbin/dhcping /usr/sbin/dhcping

ENTRYPOINT ["/usr/sbin/dhcping"]
