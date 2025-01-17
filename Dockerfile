# Use the lightweight Alpine image with HTTP server
FROM httpd:alpine

# Copy static assets to the container
COPY index.html /usr/local/apache2/htdocs/index.html
COPY css /usr/local/apache2/htdocs/css
COPY js /usr/local/apache2/htdocs/js
COPY images /usr/local/apache2/htdocs/images

# Expose port 80
EXPOSE 80
