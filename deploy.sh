#!/bin/bash
result=$( sudo docker images -q my-app:latest )
docker run -itd --name My-container -p 3000:80 $result
CONTAINER_NAME='My-container'
x=$(docker ps -q -f status=running -f name=$my-container)
if [[ -n "$x" ]]; then
  echo 'Container exists'
else
  echo 'No container image'
fi




