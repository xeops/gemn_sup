FROM ubuntu:16.04

RUN apt-get update 
RUN apt-get install -y apache2
RUN apt-get install -y openssh-server 
RUN apt-get install -y supervisor
RUN apt-get install -y git
RUN apt-get install -y gearman-job-server

VOLUME ["/website_files"]
EXPOSE 22 80 8000
