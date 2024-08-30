Project tested on Mac with M2 chip

- Dockerfiles are located in the respective microservice folders.
- Documentation file is documentation.pdf.

## Prerequisites
- Must have kubectl, docker, and minikube installed
- Make sure ports 5000 and 5001 on localhost are not occupied as these are the ports the kubernetes services listen on.

## Steps to run application:
1. Start Docker.
2. In the main project directory, run the script `bash script.sh` from terminal. This script deletes any existing minikubes in docker and sets up a new minikube. It will then deploy the hello service and world service, and the kubernetes service for both. 
3. Wait 1-5 minutes for kubernetes deployments to be ready.
4. Test the microservices by running the script `bash app.sh`. This will call both services and return their concatenation, resulting in a console output of `Hello World`.

## Debugging
- If `script.sh` is failing, make sure Docker is running in the background.
- If `app.sh` is not producing any output, wait a little longer as the kubernetes deployments set up. Run `kubectl get deployment` to check the status of the service deployments.
- If the kubernetes deployment has been running for a while, one or both services may fail. You can restart the services by running `bash script.sh` again.
- If one or more endpoints is not working in the `app.sh` script, you can manually test the endpoints. See below.

## Manually testing endpoints
Once the kubernetes service is set up (Steps 1-3), you can manually test the hello service with 

`curl http://127.0.0.1:5000/hello` 

and the world service with

`curl http://127.0.0.1:5001/world`


## Links
github: https://github.com/bmltera/helloworld-microservices/tree/main

dockerhub: https://hub.docker.com/repositories/bmltera

further documentation: https://docs.google.com/document/d/1R0N45eJJWsVCOO5zh1dZAHo-e1IEkakm7TRjB9OXmQQ/edit?usp=sharing
