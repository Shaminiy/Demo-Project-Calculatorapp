# Use official Nginx image
FROM nginx:alpine

# Copy website files to the default nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when container runs
CMD ["nginx", "-g", "daemon off;"]
