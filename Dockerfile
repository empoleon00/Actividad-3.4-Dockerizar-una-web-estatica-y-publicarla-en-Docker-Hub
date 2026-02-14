FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y nginx git && \
    apt clean

RUN rm -rf /var/www/html/*

RUN git clone https://github.com/josejuansanchez/2048.git /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]