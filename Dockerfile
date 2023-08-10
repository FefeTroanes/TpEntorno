FROM alpine

RUN apk update && apk add bash curl imagemagick

WORKDIR /app

ADD scripts scripts

ENTRYPOINT [ "bash", "/app/scripts/menu.sh" ]