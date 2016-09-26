FROM ubuntu:xenial

RUN echo "deb http://ppa.launchpad.net/uroni/urbackup/ubuntu xenial main" > /etc/apt/sources.list.d/urbackup.list
RUN apt-get update && apt-get --allow-unauthenticated -y install vim less urbackup-server

COPY files/start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh

