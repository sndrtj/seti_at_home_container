FROM ubuntu:bionic

RUN apt-get update && apt-get install boinc-client -y && mkdir -p /var/lib/boinc-client

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]
