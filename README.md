# Automated Backup to S3 using Bash Script

## Project Summary

This project automates the backup of files from an EC2 instance to an S3 bucket using a Bash script and AWS CLI. The script runs every 2 minutes via a cron job, compresses the backup file, and stores it both locally and in S3.

### Tools Used:
- AWS (EC2, S3, IAM)
- Bash Scripting
- Cron Jobs
- AWS CLI

---

## Project Description

This project demonstrates how to automate backups using a Bash script on an AWS EC2 instance. It ensures periodic backups are securely stored in an S3 bucket.

---

## Steps to Implement

### Step 1: Launch EC2 Instance
- Created an EC2 instance and logged in.
- Assigned an IAM role for S3 access.

![Create EC2 Instance](screenshots/1-create-ec2-instance.png)

### Step 2: Install AWS CLI
- Downloaded and installed AWS CLI for S3 interaction.

![AWS CLI Installation](screenshots/2-aws-cli-installation.png)

### Step 3: Configure IAM Role & User
- Created an IAM user with `AmazonS3FullAccess` permissions.
- Assigned an IAM role with `SSMFullAccess` and `S3FullAccess`.

![IAM User Configuration](screenshots/3-iam-user.png)
![IAM Role for S3](screenshots/3-iam-role-s3.png)

### Step 4: Create an S3 Bucket
- Used AWS CLI to create an S3 bucket.

![S3 Bucket Creation](screenshots/5.png)

### Step 5: Create and Configure the Bash Script
- Developed a Bash script to:
  1. Copy files locally.
  2. Compress the backup folder.
  3. Upload the compressed file to S3.

![Bash Script](screenshots/4-bash-script.png)

### Step 6: Execute the Script
- Ran the script manually to ensure proper execution.

![Script Execution](screenshots/5-script-execution.png)

### Step 7: Configure Cron Job
- Added the script to `/etc/crontab` to execute automatically every 2 minutes.

![Cron Job Configuration](screenshots/6-crontab.png)

### Step 8: Verify Backups
- Checked the backup file locally and on S3.
- Verified the log file to confirm execution.

![Home Directory Contents](screenshots/8-home-directory.png)
![Backup File Contents After Execution](screenshots/9-backup-file-&-logfile.png)
![S3 Backup Verification](screenshots/7-s3-backup.png)

---

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/SaaedT/AWS-S3-Backup-Automation.git
   ```
---

## Conclusion

This project showcases how to automate periodic file backups from an EC2 instance to an S3 bucket using a Bash script and AWS CLI. The automation ensures data security and availability with minimal manual intervention.

