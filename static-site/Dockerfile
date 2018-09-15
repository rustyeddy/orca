FROM nginx:alpine

WORKDIR /srv
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /srv/index.html

EXPOSE 80

CMD nginx -g 'daemon off;'
# cmd /bin/sh
