# URBackup Server in docker

## Info

  - Official Webpage: https://www.urbackup.org/
  - REPO: https://www.urbackup.org/download.html#server_ubuntu

## Build

```
docker build -t croc/urbackupsrv .
```

## Run

```
docker run -tid --name=urbackupsrv --net=host -v /srv/urbackupsrv/data:/media/BACKUP/ croc/urbackupsrv /opt/start.sh
```

## Usage

The URBackup's WEBUI available on http://< your docker host >:55414/ ( example: http://192.168.56.103:55414/ )

