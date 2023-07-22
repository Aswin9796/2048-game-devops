# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the content of your CSS project to the container's working directory
COPY . .

# Expose the port on which the web server will listen (default for Nginx is 80)
EXPOSE 80

# Command to start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
