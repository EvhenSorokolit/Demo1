FROM alpine
RUN apk add apache2
RUN apk add openrc        

#RUN rc-service apache2 start
#RUN rc-update add apache2
COPY ./index.html /var/www/localhost/htdocs/index.html


CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
