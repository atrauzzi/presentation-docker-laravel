#!/bin/sh

# Take a copy of the base configuration.
cp /nginx.base.conf /etc/nginx/nginx.conf

# We have to manually write our desired environment settings into the configuration file.
sed -i "s/%php-fpm-ip%/$PHP_FPM_PORT_9000_TCP_ADDR/" /etc/nginx/nginx.conf
sed -i "s/%php-fpm-port%/$PHP_FPM_PORT_9000_TCP_PORT/" /etc/nginx/nginx.conf

# Actually nginx as a process, not as a daemon (based on our nginx.conf file).
/usr/sbin/nginx "$@"