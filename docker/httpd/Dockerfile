FROM httpd:alpine

RUN apk --update add tzdata \
  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && apk del tzdata \
	&& apk add curl openrc apache2-proxy \
  && rm -rf /var/cache/apk/*

COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
