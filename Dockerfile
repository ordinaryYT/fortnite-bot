# Use official Nginx image from Docker Hub
FROM nginx:alpine

# Copy your static files into the container
COPY ./ /usr/share/nginx/html

# Expose port 80 (default port for HTTP)
EXPOSE 80

# Nginx will automatically start and serve the files when the container runs
CMD ["nginx", "-g", "daemon off;"]
