FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

ENV HOME /root

RUN apt-get update
RUN apt-get install -y sqlite3 php5-cli php5-mcrypt php5-curl php5-dev php5-intl php5-json php5-sqlite git phpunit curl

RUN echo 'date.timezone = UTC' >> /etc/php5/cli/php.ini

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
