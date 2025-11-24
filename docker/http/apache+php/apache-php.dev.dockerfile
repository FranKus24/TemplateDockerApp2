FROM alpine:latest
RUN apk update && apk upgrade
RUN apk --no-cache add apache2 php php-apache2 
RUN docker-php-ext-install php-curl
RUN apk --no-cache php-gd php-mbstring php-intl php-mysqli php-xml php-zip \
        php-ctype php-dom php-iconv php-json php-pcre php-simplexml php-spl \
        php-openssl php-sodium php-tokenizer php-xmlrpc
