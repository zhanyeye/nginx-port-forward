FROM nginx:latest
MAINTAINER zhanyeye zhanyeye@qq.com
COPY mysite.template /etc/nginx/conf.d/mysite.template
ENTRYPOINT /bin/bash -c "envsubst < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"
