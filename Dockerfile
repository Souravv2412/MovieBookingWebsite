FROM php:8.2-apache

# Install extensions
RUN docker-php-ext-install pdo pdo_mysql

# Copy project files into Apache's web root
COPY . /var/www/html/

# Give Apache access
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable Apache mod_rewrite (useful if you have .htaccess)
RUN a2enmod rewrite
