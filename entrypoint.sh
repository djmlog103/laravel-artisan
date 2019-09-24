#!/bin/sh -l

composer install --prefer-dist

cp .env.example .env

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

sh -c "php artisan $*"
