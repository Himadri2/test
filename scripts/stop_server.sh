#!/bin/bash

# Check if httpd service is running
if systemctl is-active --quiet httpd; then
    echo "httpd service is running."
    
    # Stop httpd service
    sudo systemctl stop httpd
    echo "httpd service has been stopped."
else
    echo "httpd service is not running."
fi

