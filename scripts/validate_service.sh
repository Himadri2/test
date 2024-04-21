#!/bin/bash

WEBSITE="http://13.233.245.27/"

# Use curl to fetch the website content
response=$(curl -s --head $WEBSITE)

# Check if the website is accessible
if echo "$response" | grep "HTTP/1.1 200 OK" > /dev/null; then
    echo "Website $WEBSITE is accessible and showing content."
else
    echo "Website $WEBSITE is not accessible or not showing content."
fi

