FROM alpine:latest
RUN apk add apache2 \
&& apk add openrc \
&& rm -rf /etc/apk/cache
COPY ./index.html /var/www/localhost/htdocs/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
