# Use official PHP image with Apache
FROM php:8.2-apache

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache mod_rewrite (needed for many PHP apps)
RUN a2enmod rewrite

# Copy all project files to Apache root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Give Apache proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
