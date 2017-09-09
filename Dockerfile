FROM alpine:3.6

RUN apk add --no-cache nginx
RUN mkdir /app

ADD . /app

EXPOSE 80

CMD ["nginx", "-c", "/app/nginx.conf"]
