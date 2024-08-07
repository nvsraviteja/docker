# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the HTML file to the Nginx default directory
COPY html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
