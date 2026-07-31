FROM php:8.2-apache

# Install extension & dependensi yang dibutuhkan (mysqli, pdo, gd, zip untuk PhpSpreadsheet)
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install mysqli pdo pdo_mysql gd zip \
    && rm -rf /var/lib/apt/lists/*

# Aktifkan mod_rewrite Apache jika diperlukan
RUN a2enmod rewrite

WORKDIR /var/www/html
