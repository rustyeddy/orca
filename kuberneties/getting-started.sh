#!/bin/sh

cluster_name=$1

gcloud container clusters create $(cluster_name) || exit 2

gcloud container clusters get-credentials $(cluster_name) || exit 3

kubectl run hello-server --image gcr.io/google-samples/hello-app:1.0 --port 8080 || exit 5

kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080 || exit 4

# Find out everything you need
kubectl get service hello-server


