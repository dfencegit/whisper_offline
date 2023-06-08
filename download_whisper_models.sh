#!/bin/bash

DATESTAMP=`date +%y%m%d`
BASE_VOL_DIR="/cogserv/whisper_build/${DATESTAMP}"
mkdir -p ${BASE_VOL_DIR}
CONTAINER_TAG="whisper_offline2:23060801"

docker stop whisper
docker rm whisper

docker run --rm -p 9000:9000 -e ASR_MODEL=tiny --name whisper -v ${BASE_VOL_DIR}:/root/.cache ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=tiny.en --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=small --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=small.en --name whisper -v ${BASE_VOL_DIR}:/root/.cache ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=base --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=base.en --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=medium --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=medium.en --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=large-v1 --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}
docker run --rm -p 9000:9000 -e ASR_MODEL=large-v2 --name whisper -v ${BASE_VOL_DIR}:/root/.cache  ${CONTAINER_TAG}

