FROM centos

RUN yum install -y httpd mod_ssl ruby

ADD ssl.conf /etc/httpd/conf.d/ssl.conf

ADD check.rb /usr/local/bin/check.rb
ADD check.sh /usr/local/bin/check.sh

EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
