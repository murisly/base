FROM php:5.6-fpm

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libbz2-dev \
        wget \
        git \
        curl \
    && rm -r /var/lib/apt/lists/*

RUN docker-php-ext-install mcrypt mbstring zip bz2 pdo_mysql mysqli bcmath\
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && cd / \
    && wget 'ftp://xmlsoft.org/libxml2/libxml2-2.9.3.tar.gz' \
    && tar zxf /libxml2-2.9.3.tar.gz \
    && cd libxml2-2.9.3 \
    && ./configure \
    && make \
    && make install \
    && docker-php-ext-install soap \
    && rm -rf /libxml2* \
    && pecl install xdebug-2.4.0

RUN usermod -u 1000 www-data \
    && echo "alias ll='ls -l --color'" >> /root/.bashrc \
    && mkdir /var/www/yungou
    
WORKDIR /var/www/yungou

CMD ["php-fpm"]