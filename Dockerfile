FROM alpine:latest

# Update & Upgrade Repo
RUN apk update
RUN apk upgrade

# Install required packages
RUN apk add --no-cache nano \
    php84 \
    php84-session \
    php84-apache2 \
    php84-pdo_mysql \
    php84-curl \
    php84-cli \
    php84-common \
    php84-mysqli \
    php84-zip \
    php84-gd \
    php84-mbstring \
    php84-xml \
    php84-simplexml \
    php84-bcmath \
    rsync

# Permission
RUN chmod -R 777 /var/www/localhost/htdocs/

# Change default editor
RUN export EDITOR=nano

# Enable .htaccess
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/httpd.conf

# Enable 80 port for httpd
EXPOSE 80

# Run httpd
CMD ["httpd", "-D", "FOREGROUND"]