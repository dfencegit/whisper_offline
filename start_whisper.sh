#!/bin/bash

docker stop whisper
docker rm whisper

docker run -d -p 9000:9000 -e HF_DATASETS_OFFLINE=1 -e TRANSFORMERS_OFFLINE=1 -e ASR_MODEL="/root/.cache/whisper/large-v1.pt" --name whisper -v /cogserv/whisper/230504/models/whisper:/root/.cache/whisper quay.hmi.twks/openai/whisper_offline:23050402

docker logs --tail=100 -f whisper
