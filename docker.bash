#!/usr/bin/env bash

choices=( apache-start remove-none digi-start digi-stop clear-unused clean-unused)

case $1 in
"${choices[0]}")
# docker network create --subnet=172.18.0.0/16 net1
docker run --net net1 --ip 172.18.0.10 -v ~/Playground/docker-apache/apache2/sites-available/:/etc/apache2/sites-available/ -v /mnt/micro/:/mnt/yocto/ apache
;;

"${choices[1]}")
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
;;

"${choices[2]}")
docker run -d -p 5672:5672 -p 15672:15672  --name rabbitmq rabbitmq:management
;;

"${choices[4]}")
docker ps -aq | xargs docker rm
;;
"${choices[5]}")
docker ps -aq | xargs docker rm
;;

"shortlist")
echo "$(IFS=' ' ; echo "${choices[*]}")"
;;

*)
echo "[$(IFS=, ; echo "${choices[*]}")][$1]==-1 is true! Dude ? "
esac