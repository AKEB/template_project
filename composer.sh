#!/bin/bash

ARGS=''
for ((argnum = 1; argnum <= $#; argnum++)); do
  ARGS="${ARGS}${!argnum} "
done


cd docker
docker compose up -d
docker compose exec -t php-fpm bash -c "composer ${ARGS}"
cd ../
