# Overview
This is a simple Docker build file to create an whisper container that will run in a disconnected environment.

The container needs to be run in a connected environment first to download the language models, once they are downloaded you can transfer the container image and the model files and it will run without internet access.

## Building a new version
To build the container simply run the following from this folder:

>docker build -t tag_name:version .

Then save the container for import into offline environment

>docker save tag_name:version -o tag_name_version.tgz

## Saving language models for offline use
The download_whisper_models.sh script can be used to download the latest set of language models.

## File required for offline running
Bundle up the following files and import them into your offline environment.

1. tag_name_version.tgz
2. start_whisper.sh
3. models


