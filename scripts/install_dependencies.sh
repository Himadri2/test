#!/bin/bash

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

