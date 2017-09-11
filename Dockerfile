FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get install -y openssh-server 
RUN apt-get install -y supervisor
RUN apt-get install -y git
RUN apt-get install -y gearman-job-server
RUN apt-get install -y curl php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-mbstring 
RUN apt-get install -y mysql-server

RUN apt-get install -y apache2 libapache2-mod-php7.0
RUN a2enmod php7.0

EXPOSE 22 80 8000 3306

VOLUME ["/website_files"]