FROM alpine:latest

# Install required packages
RUN apk add --no-cache nano \
    php85 \
    php85-session \
    php85-apache2 \
    php85-pdo_mysql \
    php85-curl \
    php85-cli \
    php85-common \
    php85-mysqli \
    php85-zip \
    php85-gd \
    php85-mbstring \
    php85-xml \
    php85-simplexml \
    php85-bcmath \
    php85-pdo \
    php85-intl \
    php85-dom \
    php85-fileinfo \
    php85-iconv \
    php85-phar \
    php85-tokenizer \
    php85-xmlreader \
    php85-xmlwriter \
    php85-openssl \
    php85-pecl-xdebug \
    rsync \
    tzdata

# Permission
RUN chmod -R 777 /var/www/localhost/htdocs/

# Enable .htaccess
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/httpd.conf

# Enable 80 port for httpd
EXPOSE 80

# Run httpd
CMD ["httpd", "-D", "FOREGROUND"]