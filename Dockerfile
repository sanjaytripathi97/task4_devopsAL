FROM centos:latest

RUN yum  install php* httpd httpd-tools net-tools -y


COPY *.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
