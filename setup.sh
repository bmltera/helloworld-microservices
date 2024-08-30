#!/bin/bash
minikube delete
minikube start

# Apply Kubernetes manifest files
kubectl apply -f deployment-hello.yml
kubectl apply -f deployment-world.yml
kubectl apply -f service-hello.yml
kubectl apply -f service-world.yml

# start minikube tunnel
(minikube tunnel &) &> /dev/null
