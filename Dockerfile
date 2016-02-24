FROM alpine:edge
MAINTAINER Ken Williamson
RUN apk update
RUN apk add mongodb --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
VOLUME /data/db
VOLUME /mongodb/backup
ADD docker_entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 27017
CMD ["mongod"]