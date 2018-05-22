#!/bin/bash

# This script backs up the uplaods directory on a recurring schedule

echo "Starting backup ..."

: ${S3_BAKCKUP_PATH:=''}
BACKUP_NAME="zmw.com_`date +"%m%d%Y_%H%M%S"`.zip"
BACKUP_PATH="/tmp/${BACKUP_NAME}"

# make sure the that the S3_BUCKET path exists
count=`/usr/bin/aws s3 ls s3://$S3_BAKCKUP_PATH | wc -l`

if [[ $count -eq 0 ]]; then
  echo "Path $S3_BAKCKUP_PATH not found."
  exit 1
fi

# Create backup
zip -r $BACKUP_PATH /var/www/html

# Upload to S3
/usr/bin/aws s3 cp $BACKUP_PATH "s3://$S3_BAKCKUP_PATH/${BACKUP_NAME}"

# Clean up
rm -f $BACKUP_PATH

echo "Wordpress backup completed!"
