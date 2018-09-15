kc=/usr/local/bin/kubectl
mc=/usr/local/bin/minicube
app=wordpress
# Verify ~~ Note this will take a while ...
$(kc) get pvc

# Verify WP 
$(kc) get services wordpress

# Minikube service wordpress --url
$(mc) service wordpress --url
