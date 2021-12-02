FROM alpine
RUN apk add apache2 \
&& apk add openrc        
COPY ./index.html /var/www/localhost/htdocs/index.html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
