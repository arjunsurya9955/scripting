# Shell Scripting with AWS EC2, Bash & Git

## Project Overview

This project demonstrates Linux shell scripting, AWS EC2 monitoring, Git version control, logging, and task automation using Cron.

The monitoring script collects important system information such as:

* Running Services
* CPU Usage
* Memory Usage
* Disk Usage

The output is logged into a file and scheduled to run automatically every day using Cron.

---

## Technologies Used

* AWS EC2 (Ubuntu)
* Bash Shell Scripting
* Git
* GitHub
* Cron

---

## Project Structure

```
shell-assignment/
│── monitor.sh
│── monitor_log1.txt
└── README.md
```

---

## EC2 Setup

1. Launch an Ubuntu EC2 instance.
2. Connect to the instance using SSH or MobaXterm.
3. Update the system:

```bash
sudo apt update
```

4. Install Git:

```bash
sudo apt install git -y
```

---

## Monitoring Script

The `monitor.sh` script displays:

* Running Services
* CPU Usage
* Memory Usage
* Disk Usage
* Current Date & Time
* Hostname

Run the script:

```bash
chmod +x monitor.sh
./monitor.sh
```

---

## Logging

Append the monitoring output to a log file:

```bash
./monitor.sh >> monitor_log1.txt
```

View the log:

```bash
cat monitor_log1.txt
```

---

## Cron Job

Open crontab:

```bash
crontab -e
```

Example: Run every day at 9:00 AM

```bash
0 9 * * * /home/ubuntu/shell-assignment/monitor.sh >> /home/ubuntu/shell-assignment/monitor_log1.txt 2>&1
```

Verify:

```bash
crontab -l
```

---

## Git Commands

Initialize repository:

```bash
git init
```

Add files:

```bash
git add .
```

Commit:

```bash
git commit -m "Initial shell scripting assignment"
```

Push to GitHub:

```bash
git remote add origin <repository-url>
git branch -M main
git push -u origin main
```

---

## Expected Output

The monitoring script provides a formatted report containing:

* Date & Time
* Hostname
* Running Services
* CPU Usage
* Memory Usage
* Disk Usage

---

## Author

**S Arjun Surya**

---

## Submission

* GitHub Repository
* monitor.sh
* monitor_log1.txt
* README.md
* Screenshots of EC2 setup, script execution, log file, and cron job

