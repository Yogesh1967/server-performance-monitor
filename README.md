# 🖥️ Server Performance Stats - Bash Script

A lightweight, easy-to-run Bash script (`server-stats.sh`) that provides key server performance metrics at a glance. Perfect for Linux administrators, DevOps beginners, or anyone monitoring system health.

---

## 📋 Features

This script displays:

- ✅ OS Version
- ✅ Uptime and Load Average
- ✅ Logged-in Users
- ✅ Total CPU Usage
- ✅ Memory Usage (Used vs Free with %)
- ✅ Disk Usage (Used vs Free with %)
- ✅ Top 5 Processes by CPU Usage
- ✅ Top 5 Processes by Memory Usage
- ✅ Failed SSH Login Attempts in the Last 24 Hours

---

## ⚙️ Prerequisites

- Visual Studio Code (VS Code)
- Bash shell
- Linux environment (local or remote)
- Remote SSH extension (if connecting to a remote server)
- Permissions to run commands like `top`, `ps`, `journalctl`

---

## 🚀 Setup Instructions

### 🔹 1. Open VS Code

- Launch **Visual Studio Code**
- Open a folder or connect to a **remote Linux server** using:
  - `Remote-SSH: Connect to Host` (bottom-left green icon)

### 🔹 2. Create Script File

- Right-click in the file explorer > **New File**
- Name the file: `server-stats.sh`

### 🔹 3. Paste the Script

Paste the script contents inside `server-stats.sh`.  
Make sure it starts with:

```bash
#!/bin/bash
