#!/bin/bash

time=$(date +%m-%d-%y_%H_%M_%S)
Backup_file=/home/ubuntu/bash
Dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
LOG_FILE="/home/ubuntu/backup/logfile.log"
S3_bucket="s3-new-bash-course-saeed"
FILE_TO_UPLOUD="$Dest/$filename"

if ! command -v aws &> /dev/null
then
        echo "AWS CLI is not installed. please install it first"
        exit 2
fi

if [$? -ne 2 ]
then
 if [ -f $filename ]
 then
        echo "Error file $filename already exists!" | tee -a "$LOG_FILE"
 else
        tar -czvf "$Dest/$filename" "$Backup_file"
        echo
        echo "Backup completed successfuly. Backup file: $Dest/$filename" | tee -a "LOG_FILE"
        echo
        aws s3 cp "$FILE_TO_UPLOUD" "s3://$S3_bucket/"
 fi
fi

if [ $? -eq 0 ]
then 
        echo
        echo "File uploaded successfuly to the s3 bucket: $S3_bucket"
else
        echo "File upload to s3 failed"
fi
