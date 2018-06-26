FROM alpine:3.6
MAINTAINER Jhe <jhe@brobridge.com>
ENV PORT='3000'
RUN rm -rf /var/cache/apk/* && rm -rf /tmp/* 
RUN apk update && apk --update add nodejs nodejs-npm
COPY ./server /app
WORKDIR /app
EXPOSE ${PORT}
CMD ["node", "server.js"]
