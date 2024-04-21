#!/bin/bash

# Define log output directory
LOG_DIR="/var/log/script_logs"
mkdir -p "$LOG_DIR"

# Set log file name with current timestamp
LOG_FILE="$LOG_DIR/script_log_$(date +'%Y-%m-%d_%H-%M-%S').txt"

# Redirect all output to the log file
exec > "$LOG_FILE" 2>&1

# Print current directory and its contents including hidden files
echo "Current Directory: $(pwd)"
echo "Contents of Current Directory:"
ls -la

# Check if /var/www/html/ directory exists
if [ -d "/var/www/html/" ]; then
    # Print directory and its contents
    echo "Directory /var/www/html/ exists."
    echo "Contents of /var/www/html/:"
    ls -la /var/www/html/
else
    echo "Directory /var/www/html/ does not exist."
fi
