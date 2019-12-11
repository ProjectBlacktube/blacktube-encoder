FROM koneko096/resty-rtmp-docker:latest

USER nginx

ADD conf/etc /opt/openresty/etc
ADD conf/vhosts /opt/openresty/vhosts

RUN mkdir -p /tmp/state \
    && mkdir -p /tmp/dash

EXPOSE 8080

CMD ["/opt/openresty/bin/openresty", "-g", "daemon off;"]
