#!/bin/bash

docker stop whisper
docker rm whisper

docker run -d -p 9000:9000 -e ASR_MODEL=large --name whisper -v /cogserv/whisper:/root  onerahmet/openai-whisper-asr-webservice:latest

docker logs --tail=100 -f whisper
