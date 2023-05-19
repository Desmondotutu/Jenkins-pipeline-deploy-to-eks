# Use the official nginx base image
FROM nginx

WORKDIR /usr/share/nginx/html
# Copy the website code into the container
COPY src/ .

# Expose port 80 for the Nginx server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
