FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt install apache2-utils -y
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
RUN apt install php -y
RUN apt clean
RUN rm -f /var/www/html/index.html
COPY index.php  /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D" , "FOREGROUND"]