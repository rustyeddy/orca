#!/bin/bash

kc=/usr/local/bin/kubectl

# Create a secret
$(kc) create secret generic mysql-pass --from-literal=password=wp

# Verify Secret 
$(kc) get secrets 

# Create the MySQL Deployment
$(kc) create -f https://k8s.io/examples/application/wordpress/wordpress-deployment.yaml

# Verify ~~ Note this will take a while ...
$(kc) get pvc

# Verify WP 
