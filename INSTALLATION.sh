#!/bin/bash

echo start mkdir.sh
sh mkdir.sh
sleep 2s
echo start movefiles.sh
sh movefiles.sh
sleep 2s
echo start StartApp.sh
sh StartApp.sh
sleep 5s
echo auto_dump.sh   # add to
sh auto_dump.sh     # add to
sleep 2s            # add to
echo start Makemigration.sh
sh Makemigration.sh
sleep 2s
echo start Makemodelview.sh
sh Makemodelview.sh
sleep 2s 
echo start Makefrontend.sh
sh Makefrontend.sh
sleep 2s
echo docker-compose UP!
docker-compose up --build
