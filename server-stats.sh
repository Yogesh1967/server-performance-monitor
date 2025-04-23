#!/bin/bash

echo "===== Server Performance Stats ====="
echo "Generated on: $(date)"
echo

# OS version
echo "👉 OS Version:"
cat /etc/os-release | grep PRETTY_NAME
echo

# Uptime and load average
echo "👉 Uptime and Load Average:"
uptime
echo

# Logged in users
echo "👉 Logged In Users:"
who
echo

# CPU Usage
echo "👉 Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
awk '{print "Used: " $2 + $4 "%, Idle: " $8 "%"}'
echo

# Memory Usage
echo "👉 Memory Usage:"
free -h | awk '/Mem:/ {used=$3; total=$2; printf("Used: %s / %s (%.2f%%)\n", used, total, ($3/$2)*100)}'
echo

# Disk Usage
echo "👉 Disk Usage:"
df -h / | awk 'NR==2 {used=$3; total=$2; usedp=$5; print "Used: " used " / " total " (" usedp ")"}'
echo

# Top 5 processes by CPU usage
echo "👉 Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
echo

# Top 5 processes by Memory usage
echo "👉 Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
echo

# Failed SSH logins (last 24 hours)
echo "👉 Failed SSH Login Attempts (last 24 hours):"
journalctl _COMM=sshd --since "24 hours ago" | grep "Failed password" | wc -l
echo

echo "===== End of Report ====="
