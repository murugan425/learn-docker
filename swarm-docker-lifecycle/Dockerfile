FROM drupal:9

RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/core

COPY ./themes ./themes

WORKDIR /var/www/html