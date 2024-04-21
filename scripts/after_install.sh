#!/bin/bash

# Change ownership of /var/www/html/ to apache:apache
echo "Changing ownership of /var/www/html/ to apache:apache..."
sudo chown -R apache:apache /var/www/html/
echo "Ownership changed successfully."

# Change permissions of /var/www/html/ to 755
echo "Changing permissions of /var/www/html/ to 755..."
sudo chmod -R 755 /var/www/html/
echo "Permissions changed successfully."

