FROM centos

RUN yum install -y httpd mod_ssl

# ADD ssl.conf /etc/httpd/conf.d/ssl.conf

EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
