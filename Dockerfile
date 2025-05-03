# Use the official Nginx image as a parent image
FROM nginx:alpine

# Copy the privacy policy HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Copy the logo image to the same directory
COPY logo.png /usr/share/nginx/html/logo.png

# Configure Nginx to serve the privacy policy page
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
