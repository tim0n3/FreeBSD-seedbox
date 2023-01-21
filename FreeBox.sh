#!/bin/sh

# Update the system
sudo pkg update
sudo pkg upgrade -y

# Install nginx
sudo pkg install -y nginx

# Start and enable nginx at boot
sudo sysrc nginx_enable=YES
sudo service nginx start

# Install apache
sudo pkg install -y apache24

# Start and enable apache at boot
sudo sysrc apache24_enable=YES
sudo service apache24 start

# Install plex media server
sudo pkg install -y plexmediaserver

# Start and enable plex at boot
sudo sysrc plexmediaserver_enable=YES
sudo service plexmediaserver start

# Install transmission
sudo pkg install -y transmission

# Start and enable transmission at boot
sudo sysrc transmission_enable=YES
sudo service transmission start
