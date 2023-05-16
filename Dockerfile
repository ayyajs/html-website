FROM centos:7
MAINTAINER devopsteam
RUN yum -y install httpd wget unzip
WORKDIR /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page271/blugoon.zip
RUN unzip blugoon.zip && mv 2116_blugoon/* /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]