# Watson Application server
FROM ubuntu:15.04
MAINTAINER Jack Warner <jackwarner@wmalumni.com> (@warnerjack)

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y \
    wget \
    unzip \
    apache2 \
    php5 \
    php5-gd \
    libapache2-mod-php5 \
    php5-mysql

# Install app
RUN rm -rf /var/www/html
RUN wget https://github.com/jackwarner/LimeSurvey/archive/Watson-RC22.zip -P /var/www/
RUN unzip /var/www/Watson-RC22.zip -d /var/www/
RUN mv -f /var/www/LimeSurvey-Watson-RC22 /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/tmp;chown -R www-data:www-data /var/www/html/tmp
RUN chmod -R 755 /var/www/html/upload;chown -R www-data:www-data /var/www/html/upload
RUN chmod -R 755 /var/www/html/application/config;chown -R www-data:www-data /var/www/html/application/config
RUN chmod 0444 /var/www/html/admin/*

# Configure apache
RUN a2enmod rewrite
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

RUN apt-get remove -y \
    unzip \
    wget

RUN apt-get autoremove -y

