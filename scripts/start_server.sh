#!/bin/bash

# Start httpd service
echo "Starting httpd service..."
sudo systemctl start httpd

# Check if httpd service started successfully
if systemctl is-active --quiet httpd; then
    echo "httpd service started successfully."
else
    echo "Failed to start httpd service."
fi

