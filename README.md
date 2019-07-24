# URBackup Server in docker

## Info

  - Official Webpage: https://www.urbackup.org/

## Build

```
docker build -t croc/urbackup-server .
```

## Run

```
docker-compose up -d
```

## Usage

The URBackup's WEBUI available on http://< your docker host >:55414/
Example: http://192.168.56.103:55414/


## official way

You can use official docker solution too: https://www.urbackup.org/download.html#server_docker
I have created a compose file to offical docker container:

```
docker-compose -f docker-compose-officialurbackup.yml up -d
```
