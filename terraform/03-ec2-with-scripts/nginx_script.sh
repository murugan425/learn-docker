#!/bin/bash
#above is the 'shabang' to invoke the interpreter program. [bash/sh]

# sleep until instance is ready
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
  sleep 2s
done

echo "Instance is ready & running state @" $(date)

# install nginx
apt-get update
echo "Install NGINX"
apt-get -y install nginx

# make sure nginx is started
echo "Start NGINX"
service nginx start

