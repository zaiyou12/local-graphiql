# Use the official Nginx image as a parent image
FROM nginx:alpine

# Install envsubst
RUN apk add --no-cache gettext

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML file from your host to the container
COPY index.html /usr/share/nginx/html/template.html

# Copy the shell script
COPY entrypoint.sh /

# Make sure the script is executable
RUN chmod +x /entrypoint.sh

# Expose port 80
EXPOSE 80

# Use the shell script as the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]