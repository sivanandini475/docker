FROM ubuntu
MAINTAINER The Contos project
#Install git
RUN apt-get update \        
     apt-get install -y apache2 git
RUN systemctl start apache2
RUN systemctl enable apache2
RUN git clone -b https://github.com/sivanandini475/dev.git /var/www/html/
EXPOSE 80
CMD /usr/sbin/apache2 -D FOREGROUND
