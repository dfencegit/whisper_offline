* Overview
This is a simple Docker build file to create an whisper container that will run in a disconnected environment.

The container needs to be run in a connected environment first to download the language models, once they are downloaded you can transfer the container image and the model files and it will run without internet access.

** Building a new version
To build the container simply run the following from this folder:

#docker build -t tag_name:version .

This will build the container.  

** Exporting language models
To export run the container with the various required models and a mapped volume so the models are stored on the local file system.  Once you have all the models you need.  Save the container "docker save tag_name:version -o package_name.tgz" bundle that up with the models and export to required disconnected site.

