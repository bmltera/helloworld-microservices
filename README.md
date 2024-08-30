Project tested on Mac with M2 chip

- Dockerfiles are located in the respective microservice folders.
- Documentation file is documentation.pdf.

## Prerequisites
- Must have kubectl, docker, and minikube installed
- Make sure ports 5000 and 5001 on localhost are not occupied as these are the ports the kubernetes services listen on.

## Steps to run application:
1. In the main project directory, run the script `bash script.sh` from terminal. This script deletes any existing minikubes in docker and sets up a new minikube. It will then deploy the hello service and world service, and the kubernetes service for both. 
2. Wait 1-5 minutes for kubernetes deployments to be ready
3. Test the microservices by running the script `bash app.sh`. This will call both services and return their concatenation, resulting in a console output of `Hello World`.
##

github: https://github.com/bmltera/helloworld-microservices/tree/main

dockerhub: https://hub.docker.com/repositories/bmltera
