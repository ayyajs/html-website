FROM centos:7
RUN yum -y install httpd
COPY * /var/www/html/
WORKDIR /var/www/html/