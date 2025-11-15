
# Apache2 & PHP Lightweight webserver for development

- [Apache2 \& PHP Lightweight webserver for development](#apache2--php-lightweight-webserver-for-development)
- [Descriptions](#descriptions)
  - [docker-compose file](#docker-compose-file)
  - [Build](#build)
- [Versions](#versions)
  - [**v0.12:**](#v012)
  - [**v0.11:**](#v011)
  - [**v0.10:**](#v010)
  - [**v0.9:**](#v09)
  - [**v0.8:**](#v08)
  - [**v0.7:**](#v07)


# Descriptions
**+** Means the new packages  
**-** Means the removed packages

**Container WWW root:** `/var/www/localhost/htdocs/`  
**Apache2 Config path:** `/etc/Apache2/`  
**Port:** 80  
**Editor:** nano  
**Extra packages:**
- nano
- rsync

## docker-compose file
```yaml
---
services:
  httpdphp:
    image: naxora/httpdphp:latest # or naxora/httpdphp:vx.xx
    container_name: httpdphp
    ports:
      - <PORT>:80
    volumes:
      - <PATH>:/var/www/localhost/htdocs/
    restart: unless-stopped
```

## Build
If you want to build your own package:  
```shell
$ git clone https://github.com/Naxora/alpine_httpd_php.git
$ cd alpine_httpd_php
$ sudo docker build -t YOUR-NAME/httpdphp:latest . --no-cache
```

<hr>

# Versions

## **v0.12:**  
Alpine: 3.22.2  

PHP 8.4.14  
php84-session  
php84-apache2  
php84-pdo_mysql  
php84-curl  
php84-cli  
php84-common  
php84-mysqli  
php84-zip  
php84-gd  
php84-mbstring  
php84-simplexml  
php84-xml  
php84-bcmath  
.htaccess support


## **v0.11:**  
Alpine: 3.20.3  

PHP 8.3.14  
php83-session  
php83-apache2  
php83-pdo_mysql  
php83-curl  
php83-cli  
php83-common  
php83-mysqli  
php83-zip  
php83-gd  
php83-mbstring  
php83-simplexml  
php83-xml  
php83-bcmath  
.htaccess support

## **v0.10:**  
Alpine: 3.20.0  

PHP 8.2.19  
php82-session  
php82-apache2  
php82-pdo_mysql  
php82-curl  
php82-cli  
php82-common  
php82-mysqli  
php82-zip  
php82-gd  
php82-mbstring  
php82-simplexml  
php82-xml  
php82-bcmath  
**+ .htaccess support**



## **v0.9:**  
Alpine: 3.18.4  

PHP 8.2.13  
php82-session  
php82-apache2  
php82-pdo_mysql  
php82-curl  
php82-cli  
php82-common  
php82-mysqli  
php82-zip  
php82-gd  
php82-mbstring  
php82-simplexml  
php82-xml  
php82-bcmath  

## **v0.8:**  
Alpine: 3.18.3  

PHP 8.2.10  
php82-session  
php82-apache2  
php82-pdo_mysql  
php82-curl  
php82-cli  
php82-common  
php82-mysqli  
php82-zip  
php82-gd  
php82-mbstring  
**+php82-simplexml**  
php82-xml  
php82-bcmath  

## **v0.7:**  
Alpine: 3.18.2  

PHP 8.2.8  
php82-session  
php82-apache2  
php82-pdo_mysql  
php82-curl  
php82-cli  
php82-common  
php82-mysqli  
php82-zip  
php82-gd  
php82-mbstring  
php82-xml  
php82-bcmath  
