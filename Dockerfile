FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt-get install php -y
RUN apt-get clean
RUN rm -f /var/www/html/index.html
COPY index.php  /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D" , "FOREGROUND"]