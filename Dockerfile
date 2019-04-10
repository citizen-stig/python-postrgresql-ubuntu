FROM ubuntu:18.04

MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=US/Eastern

RUN apt-get update && \
    apt-get install -y git python3-dev python3-pip supervisor rabbitmq-server redis-server chrpath shared-mime-info tcl8.6-dev tk8.6-dev python-tk && \
    apt-get install -y libpq-dev libssl-dev libffi-dev libxft-dev libxml2-dev libxslt1-dev libcairo2 libpango1.0-0 libgdk-pixbuf2.0-0  libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev libtiff5-dev libjpeg8-dev zlib1g-dev liblcms2-dev libwebp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install --no-cache-dir psycopg2==2.8.1 gevent==1.3.7 lxml==4.3.3
