FROM composer:latest

RUN install-php-extensions ast;

RUN #composer global require felixfbecker/language-server && \
    composer global require friendsofphp/php-cs-fixer && \
    composer global require phan/phan && \
    composer global require phpmd/phpmd && \
    composer global require phpstan/phpstan && \
    composer global require squizlabs/php_codesniffer && \
    composer global require tightenco/tlint && \
    composer global require vimeo/psalm


ENV PATH="/tmp/vendor/bin:${PATH}"

# intelephense
# https://github.com/bmewburn/intelephense-docs/blob/master/installation.md
RUN apk add --update nodejs npm && \
    npm i intelephense -g
