FROM mysql:5.7

# Set environment variables for database configuration
ENV MYSQL_DATABASE=wordpress \
    MYSQL_USER=wordpress_user \
    MYSQL_PASSWORD=securepassword \
    MYSQL_ROOT_PASSWORD=rootpassword
