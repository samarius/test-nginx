# Just for testing build from Dockerfile

FROM ubuntu:14.04
MAINTAINER Samarius

RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD index.html /usr/share/nginx/html/index.html
RUN echo 'Aloha, elephantum!' >> /usr/share/nginx/html/index.html

CMD /usr/sbin/nginx

EXPOSE 80
