# AWS Linux Server Setup with Automated S3 Backup

## What This Project Does
This project demonstrates how to set up a secure Linux server on AWS EC2 and configure automated daily backups to AWS S3.

## What I Built
- Launched an Ubuntu 24.04 server on AWS EC2
- Connected securely using SSH key authentication
- Configured UFW firewall to allow only SSH traffic
- Created a user with correct sudo permissions
- Enabled automatic security updates
- Created an IAM Role for secure S3 access (no passwords stored)
- Wrote a bash script that compresses and uploads backups to S3
- Scheduled automatic daily backups at 2am using cron

## Technologies Used
- AWS EC2 (Ubuntu 24.04, t3.micro)
- AWS S3
- AWS IAM
- AWS CLI
- Bash scripting
- UFW Firewall
- Cron scheduler

## Architecture
My Mac (Terminal) → SSH → EC2 Server → Backup Script → S3 Bucket

## What I Learned
- How to securely connect to a remote Linux server
- How IAM Roles work and why they are safer than storing credentials
- How to write and schedule automated bash scripts
- How to store backups safely in cloud storage

## Skills Demonstrated
- Linux system administration
- AWS cloud services
- Security best practices
- Bash scripting
- Infrastructure automation
