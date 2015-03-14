#!/bin/sh

# Take a copy of the base configuration. Future steps will illustrate why we are doing this.
cp /nginx.base.conf /etc/nginx/nginx.conf

# Actually nginx as a process, not as a daemon (based on our nginx.conf file).
/usr/sbin/nginx "$@"