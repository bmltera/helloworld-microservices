Project tested on Mac with M2 chip

Steps to run application:
0. Make sure ports 5000 and 5001 on localhost are not occupied as these are the ports the services listen on.
1. in the project folder, run bash script.sh. This script deletes any existing minikubes in docker and sets up a new minikube. It will deploy the hello and world service, along with the kubernetes services. 
2. wait 1-5 minutes for kubernetes deployments to be ready
3. run bash app.sh. This will call both services and return their concatenation, resulting in "Hello World".