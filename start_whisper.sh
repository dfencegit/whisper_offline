#!/bin/bash

DATESTAMP=`date +%y%m%d`
BASE_VOL_DIR="/cogserv/whisper/${DATESTAMP}"
mkdir -p ${BASE_VOL_DIR}

docker stop whisper
docker rm whisper

docker run -d -p 9000:9000 -e ASR_MODEL=tiny --name whisper -v ${BASE_VOL_DIR}:/root  whisper_offline2:23060801

docker logs --tail=100 -f whisper
