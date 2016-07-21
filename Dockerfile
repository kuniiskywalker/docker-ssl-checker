FROM centos

RUN yum install -y httpd mod_ssl ruby

ADD conf/ssl.conf /etc/httpd/conf.d/ssl.conf

ADD check.sh /usr/local/bin/check.sh

ADD check_cipher.rb /usr/local/bin/check_cipher.rb

ADD check_protocol.rb /usr/local/bin/check_protocol.rb

EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
