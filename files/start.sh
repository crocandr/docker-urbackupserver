#!/bin/bash

#BACKUPFOLDER="/mnt/backup"
#
# base config
#if [ ! -d /etc/urbackup/ ]
#then
#  mkdir /etc/urbackup/
#fi
#echo $BACKUPFOLDER > /etc/urbackup/backupfolder

# run
urbackupsrv run
