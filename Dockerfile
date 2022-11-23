FROM php:7.4.1-apache

MAINTAINER bilal

COPY index.html /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80
