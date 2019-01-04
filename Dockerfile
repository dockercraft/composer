FROM dockercraft/php:7.2
MAINTAINER Daniel <daniel@topdevbox.com>

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="PHP" \
    org.label-schema.description="dockercraft/php:7.2, composer-1.6.5-r0" \
    org.label-schema.url="https://github.com/dockercraft/composer" \
    org.label-schema.vendor="Dockercraft (daniel@topdevbox.com)" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20190104"

RUN apk add --update git \
		composer && \
		rm -rf /var/cache/apk/* && \
		composer global require "hirak/prestissimo" -v && \
		composer clearcache

ENV PATH="/root/.composer/vendor/bin:${PATH}"
