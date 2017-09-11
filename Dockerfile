FROM ubuntu:16.04

RUN apt-get update 

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:ondrej/php

RUN apt-get update 
RUN apt-get install -y openssh-server 
RUN apt-get install -y supervisor
RUN apt-get install -y git
RUN apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip
RUN apt-get install -y gearman-job-server php-gearman

EXPOSE 22 80 8000