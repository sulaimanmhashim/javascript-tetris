# Use the official nginx image as the base
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy project files to the container
COPY . .

# Change nginx configuration to listen on port 5000
RUN sed -i 's/listen       80;/listen       5000;/g' /etc/nginx/conf.d/default.conf

# Expose port 5000 to the host
EXPOSE 5000

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]