FROM nginx:stable-alpine

RUN apk update && apk add openssl

ENV APP_ROOT /opt/app

# Set our working directory inside the image
WORKDIR $APP_ROOT

# create log directory
RUN mkdir log

COPY docker/reverse-proxy/nginx.conf /tmp/docker.nginx
COPY docker/reverse-proxy/gen_htpasswd.sh /etc/nginx

COPY public $APP_ROOT/public

RUN envsubst '$APP_ROOT' < /tmp/docker.nginx > /etc/nginx/conf.d/default.conf
RUN chmod +x /etc/nginx/gen_htpasswd.sh && /etc/nginx/gen_htpasswd.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
