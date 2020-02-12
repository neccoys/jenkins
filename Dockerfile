# This image is based off the latest Jenkins LTS
FROM jenkins/jenkins:lts-alpine

USER root

# Add the docker binary so running Docker commands from the master works nicely
RUN apk -U add docker

#USER jenkins

# 設定 Container 的預設目錄位置。
# WORKDIR /var/jenkins_home/workspace/project

# 安裝 NodeJS、Npm。
RUN apk add --no-cache --update nodejs npm
# 安裝 php 套件。
RUN apk add php7 php7-fpm php7-opcache curl php7-openssl php7-json php7-phar php7-iconv php7-mbstring php7-dom php-xml php-xmlwriter php7-mongodb php7-bcmath php7-tokenizer php7-pdo php7-pdo_mysql php7-xmlreader php7-zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 