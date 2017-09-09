FROM ubuntu:latest
USER root
EXPOSE 80 
RUN apt-get update
RUN apt-get -q -y install apache2
COPY testhtml /var/www/html/
#ENTRYPOINT ["/usr/sbin/apache2","-k","start"]
CMD apachectl -D FOREGROUND

