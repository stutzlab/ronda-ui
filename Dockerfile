FROM nginx:1.9

COPY /src/html /usr/share/nginx/html

COPY /src/default.conf /etc/nginx/conf.d/default.conf
