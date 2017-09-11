FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get install -y apache2
RUN apt-get install -y openssh-server 
RUN apt-get install -y supervisor
RUN apt-get install -y git
RUN apt-get install -y gearman-job-server
RUN apt-get install -y curl php7.0 php7.0-fpm php7.0-mysql php7.0-curl php7.0-mbstring
RUN sed -i 's@listen = /run/php/php7.1-fpm.sock@listen = 9011@'  /etc/php/7.0/fpm/pool.d/www.conf

VOLUME ["/website_files"]
EXPOSE 22 80 8000

ADD start.sh /start.sh
CMD ["sh", "/start.sh"]