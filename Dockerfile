FROM nginx:latest
MAINTAINER zhanyeye zhanyeye@qq.com
COPY default.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT /bin/bash -c "exec nginx -g 'daemon off;'"
