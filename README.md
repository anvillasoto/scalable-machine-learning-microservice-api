[![CircleCI](https://circleci.com/gh/anvillasoto/scalable-machine-learning-microservice-api.svg?style=svg)](https://circleci.com/gh/anvillasoto/scalable-machine-learning-microservice-api)


# Scalable Machine Learning Microservice API


## Summary

Operationalize a pre-trained machine learning model via Flask API. Deployment strategies can be of the following - (1) Local using makefile, (2) a Docker Image and (3) Kubernetes Cluster. 

Additionally, this repository is being built on master branch change via CircleCI. See .circleci/config.yml for the whole workflow of installing dependencies and linting.

## Files

Below are the pertinent directory/files for this project.

1.  model_data (directory) - includes the pretrained scikit-learn model as well as the Boston Housing dataset. See [here](https://www.kaggle.com/c/boston-housing) for more details.
2.  app.py - actual microservice code that consumes the pretrained model, accepts parameters from the user and outputs prediction, effectively an HTTP request.
3.  Dockerfile - text document that contains all the commands to assemble custom microservice image.
4.  make_prediction.sh - script that calls the API from the running Docker image.
5.  run_docker.sh - script that automates the creating and running of the application locally.
6.  run\_kubernetes.sh - runs a remote Docker image of this application (this assumes that the upload\_docker.sh script has been run and the image is remotely available.)
7.  upload_docker.sh - uploads the docker image to remote docker of the author.
 

## General Instructions

1. All of the requirements for the microservice API has been listed in the requirements.txt file. It is advisable that you run the scripts inside a contained virtual environment by executing the following script:

```
python3 -m venv ~/.<env name>
source ~/.<env name>/bin/activate
```

2. Running this project on your local machine assumes that the following dependencies are installed:
    1. docker [all platforms](https://docs.docker.com/get-docker/)
    2. minikube [Debian](https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-debian-linux/)
    3. kubectl [all platforms](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
    4. hadolint [Releases](https://github.com/hadolint/hadolint/releases/)

3. Running the docker and kubernetes files is easy as calling the script with prepended ./ (e.g. ./run_docker.sh) in a compatible command line (preferrably bash)