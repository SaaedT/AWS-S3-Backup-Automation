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

## Project Architecture
The project consists of:
- **EC2 Instance:** Running the backup script.
- **AWS CLI:** Installed for interacting with AWS services.
- **IAM Role & User:** Configured with the necessary permissions for S3 access.
- **Bash Script:** Automates file compression and backup to S3.
- **Crontab:** Schedules the backup job every 2 minutes.

---

## Project Explanation
This project implements an automated backup system using AWS services and Bash scripting. Below is a detailed breakdown:

1. **EC2 Instance:** Runs the script to handle backup operations.
2. **AWS CLI:** Provides command-line access to AWS services.
3. **IAM Role & S3 Bucket:** Ensures secure access and storage.
4. **Bash Script:** Handles file compression and backup.
5. **Crontab:** Automates the execution of the backup process.

### Screenshots
- **EC2 Instance Setup:**  
  ![EC2 Instance Setup](screenshots/1-create-ec2-instance.png)
- **AWS CLI Installation:**  
  ![AWS CLI Installation](screenshots/2-aws-cli-installation.png)
- **IAM Role & S3 Bucket:**  
  ![IAM Role & S3 Bucket](screenshots/3-iam-role-s3.png)
- **Bash Script Setup:**  
  ![Bash Script Setup](screenshots/4-bash-script.png)
- **Script Execution:**  
  ![Script Execution](screenshots/5-script-execution.png)
- **Crontab Configuration:**  
  ![Crontab Configuration](screenshots/6-crontab.png)
- **S3 Backup Verification:**  
  ![S3 Backup Verification](screenshots/7-s3-backup.png)
- **Home Directory Contents:**  
  ![Home Directory Contents](screenshots/8-home-directory.png)
- **Backup File Contents After Execution:**  
  ![Backup File](screenshots/9-backup-file.png)
- **Log File Verification:**  
  ![Log File](screenshots/10-logfile.png)

---

## Steps to Implement

### Step 1: Launch EC2 Instance
- Created an EC2 instance and logged in.
- Assigned an IAM role for S3 access.

### Step 2: Install AWS CLI
- Downloaded and installed AWS CLI for S3 interaction.

### Step 3: Configure IAM Role & User
- Created an IAM user with `AmazonS3FullAccess` permissions.
- Assigned an IAM role with `SSMFullAccess` and `S3FullAccess`.

### Step 4: Create an S3 Bucket
- Used AWS CLI to create an S3 bucket.

### Step 5: Create and Configure the Bash Script
- Developed a Bash script to compress files and upload to S3.

### Step 6: Execute the Script
- Ran the script manually to ensure proper execution.

### Step 7: Configure Cron Job
- Added the script to `/etc/crontab` to execute automatically every 2 minutes.

### Step 8: Verify Backups
- Checked the backup file locally and on S3.
- Verified the log file to confirm execution.

---

## How to Use
1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_GITHUB_USERNAME/aws-s3-backup.git
   ```
2. Navigate to the project directory:
   ```bash
   cd aws-s3-backup
   ```
3. Modify and execute the script as needed.

---

## Conclusion
This project showcases how to automate periodic file backups from an EC2 instance to an S3 bucket using a Bash script and AWS CLI. The automation ensures data security and availability with minimal manual intervention.

