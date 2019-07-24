#!/bin/bash

DB_DIR="/var/urbackup/"
BCKP_DIR="/media/BACKUP/urbackup"

URBACKUP_UID=$( id urbackup -u )
URBACKUP_GID=$( id urbackup -g )


# folder permissions fix
chown -R $URBACKUP_UID:$URBACKUP_GID $DB_DIR || { echo "ownership change error on DB dir!"; exit 1; }
chown -R $URBACKUP_UID:$URBACKUP_GID $BCKP_DIR || { echo "ownership change error on Backup dir!"; exit 1; }

# run service
urbackupsrv run
