FROM debian:stretch-slim

LABEL maintainer="Alex Hathaway <alex@hathaway.xyz>"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install python-pip
RUN apt-get -qy autoremove && DEBIAN_FRONTEND=noninteractive apt-get -qy clean
RUN pip2 install komodo-python-dbgp

CMD ["/usr/local/bin/pydbgpproxy", "-d", "0.0.0.0:9000", "-i", "0.0.0.0:9001"]

EXPOSE 9000 9001
