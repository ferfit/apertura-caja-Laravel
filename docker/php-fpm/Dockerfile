#FROM php:7.4-fpm-alpine
FROM php:7.4-fpm-alpine3.14

WORKDIR /var/www

# Install system dependencies
RUN apk add --update \
        python3 \
        python3-dev \
        py-pip \
        build-base \
    && pip install dump-env

# Setup GD extension
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
install-php-extensions gd zlib

RUN apk add --no-cache \
      freetype \
      libjpeg-turbo \
      libpng \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
      libzip-dev \
      libxml2-dev \
    && docker-php-ext-configure gd \
      --with-freetype=/usr/include/ \
      # --with-png=/usr/include/ \ # No longer necessary as of 7.4; https://github.com/docker-library/php/pull/910#issuecomment-559383597
      --with-jpeg=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-enable gd \
    && apk del --no-cache \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
    && rm -rf /tmp/*

#xvfb 1
RUN apk add -U --no-cache \
		xvfb \
		xvfb-run \
		ttf-dejavu ttf-droid ttf-freefont ttf-liberation \
		wkhtmltopdf \
		wkhtmltopdf-dev



#Install system extensions
RUN apk --update add --no-cache \
    zip \
    grep \
		curl \
		wget

RUN apk add --no-cache icu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl

#IMAGICK
RUN apk add --update --no-cache autoconf imagemagick imagemagick-dev libtool pcre-dev \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && apk del autoconf libtool pcre-dev

RUN docker-php-ext-install pdo_mysql zip soap\
    && docker-php-ext-enable pdo_mysql zip

#RUN export XDG_RUNTIME_DIR=/tmp
#RUN docker-php-ext-configure gd \
#        --with-freetype \
#        --with-jpeg \
#        --with-webp \
#    && docker-php-ext-configure bcmath --enable-bcmath

# Install composer
ENV COMPOSER_VERSION=2.5.5
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --version=$COMPOSER_VERSION --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

ENV XDEBUG_VERSION 3.1.6
RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} && apk del pcre-dev ${PHPIZE_DEPS}
RUN apk --no-cache add --virtual .build-deps \
        autoconf \
        make && \
    pecl install xdebug-$XDEBUG_VERSION && \
    docker-php-ext-enable xdebug && \
    apk del .build-deps && \
    rm -r /tmp/pear/*

ADD symfony.ini /usr/local/etc/php/conf.d/
ADD symfony.pool.conf /usr/local/etc/php/conf.d/
ADD xdebug3.ini /usr/local/etc/php/conf.d/xdebug.ini

RUN chown -R www-data:www-data /var/cache && \
	chmod -R 777 /var/cache

RUN touch /var/log/xdebug.log && \
	chmod 777 /var/log/xdebug.log

USER root

CMD ["php-fpm"]

EXPOSE 9000
