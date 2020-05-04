FROM nginx:alpine

RUN apk --update add tzdata \
  && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
  && apk del tzdata \
	&& apk add curl openrc \
  && rm -rf /var/cache/apk/*
