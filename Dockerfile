# Use an official Apache HTTP Server image as the base image
FROM httpd:latest

# Copy your HTML, CSS, and JavaScript files into the container
COPY ./path/to/your/html/css/js/files /usr/local/apache2/htdocs/

# Copy your custom virtual host configuration file
COPY my-jenkins-project.conf /usr/local/apache2/conf/extra/

# Expose the port on which your web server will run (default is 80)
EXPOSE 80

# Start the Apache HTTP Server when the container is run
CMD ["httpd-foreground"]
