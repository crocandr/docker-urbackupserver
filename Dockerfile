FROM debian:9

ENV DOWNLOAD_URL https://hndl.urbackup.org/Server/2.3.8/debian/stretch/urbackup-server_2.3.8_amd64.deb

# os base stuff
RUN apt-get update && apt-get install -y curl

# urbackup install
RUN apt-get install -y sqlite3 libcrypto++6 libfuse2
RUN curl -L -o /tmp/urbackup-server.deb $DOWNLOAD_URL \
    && dpkg -i /tmp/urbackup-server.deb

# start script
COPY files/start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh

VOLUME /media/BACKUP/urbackup
VOLUME /var/urbackup

ENTRYPOINT /opt/start.sh

#ENTRYPOINT urbackupsrv run
