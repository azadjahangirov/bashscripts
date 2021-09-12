#!/bin/bash
  
# After running script we can be sure this script work with this command : sudo tar -xvf archive.tar -C /dirname

# Assigned command to variable
DATE=$(date +%Y-%m-%d-%H-%M)

# Finding *gz files and archive them to tar
sudo find /var/log -name "*.gz" -exec tar -rvf backup_$DATE.tar {} \;
