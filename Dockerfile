FROM php:5.4-apache

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        php5-mysql && \
    rm -rf /var/lib/apt/lists/* && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
