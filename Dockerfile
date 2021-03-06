FROM ambientum/node:lts
USER root
RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        autoconf \
        libtool \
        nasm \
        libpng \
        libjpeg-turbo \
        libpng-dev \
        libjpeg \
        libjpeg-turbo-dev 

USER ambientum