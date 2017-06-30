FROM alpine:3.5
MAINTAINER Robin Shi <robinshi@outlook.com>

# Install nginx

RUN  apk add --update nginx && \
      rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx

# Add the files
ADD root /

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/log/nginx"]

WORKDIR /etc/nginx

# Expose the ports for nginx
EXPOSE 80 443

CMD ["nginx"]

