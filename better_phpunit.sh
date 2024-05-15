#!/bin/bash

BASE_PATH="$PWD/app/"

ARGS=''
for ((argnum = 1; argnum <= $#; argnum++)); do
  ARG="${ARGS}${!argnum}"
  ARG=${ARG/"$BASE_PATH"/"./"}
  ARGS="${ARG} "
done

# echo "ARGS = ${ARGS}"

cd docker
docker compose up -d
docker compose exec -t php-fpm bash -c "php ${ARGS}"
cd ../
