# Use official lightweight nginx image as the base
FROM nginx:alpine

# Remove the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom website files into nginx's default serving directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 (nginx default HTTP port)
EXPOSE 80

# Start nginx in the foreground (required for Docker containers)
CMD ["nginx", "-g", "daemon off;"]
