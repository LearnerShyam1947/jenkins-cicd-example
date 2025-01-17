# FROM nginx:latest

# EXPOSE 80

# COPY index.html /usr/share/nginx/html/index.html

FROM nginx:latest

# Expose port 80
EXPOSE 80

# Copy index.html
COPY index.html /usr/share/nginx/html/index.html

# Copy css, js, and images folders to the appropriate directory in the container
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY images /usr/share/nginx/html/images
