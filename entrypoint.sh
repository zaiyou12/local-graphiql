#!/bin/sh

# Replace environment variables in the HTML file
envsubst < /usr/share/nginx/html/template.html > /usr/share/nginx/html/index.html

# Start Nginx
exec "$@"