# Watson Application server
FROM ubuntu:14.04.3
MAINTAINER Jack Warner <jackwarner@wmalumni.com> (@warnerjack)

ENV APP_VERSION Watson-RC18

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y \
    git \
    apache2 \
    php5 \
    php5-gd \
    php5-imap \
    libapache2-mod-php5 \
    php5-mysql

# Install app
RUN rm /var/www/html/index.html
RUN git clone https://github.com/jackwarner/LimeSurvey.git /var/www/html
RUN cd /var/www/html;git checkout $APP_VERSION
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/tmp;chown -R www-data:www-data /var/www/html/tmp
RUN chmod -R 755 /var/www/html/upload;chown -R www-data:www-data /var/www/html/upload
RUN chmod -R 755 /var/www/html/application/config;chown -R www-data:www-data /var/www/html/application/config
RUN chmod 0444 /var/www/html/admin/*
RUN rm -rf /var/www/html/.git

# Configure apache
RUN a2enmod rewrite
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

RUN apt-get remove -y \
    git

RUN apt-get autoremove -y

