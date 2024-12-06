#!/bin/bash

echo "Starting before_install script..."

# Step 1: Stop the running application service to avoid any conflicts
echo "Stopping app service..." >> /tmp/deployment.log
sudo systemctl stop app.service >> /tmp/deployment.log 2>&1

# Remove the entire .git directory to avoid conflicts during deployment
sudo rm -rf /home/ubuntu/python-proj/.git
sudo rm -rf /home/ubuntu/python-proj/.github

# Ensure the destination directory is clean
sudo rm -rf /home/ubuntu/python-proj/*
