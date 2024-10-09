# nginx build image
FROM nginx:1.17.9-alpine

# Copy the nginx configuration file
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# Copy the static files
COPY ./wdata/index.html /usr/share/nginx/html

# Expose the port
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]