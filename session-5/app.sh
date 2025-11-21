#!/bin/bash
trap "exit" SIGINT
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done

# $INTERVAL 
# Development: INTERVAL=10
# Production: INTERVAL=25

# Real Case
# Development: DB_HOST=dev.db.com
# Production:  DB_HOST=prod.db.com