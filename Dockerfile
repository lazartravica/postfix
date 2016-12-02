FROM alpine

RUN apk add --update \
     postfix \
     postfix-mysql \
     rsyslog \
     bash \
 && rm -rf /var/cache/apk/*

COPY conf /etc/postfix
COPY rsyslog.conf /etc/rsyslog.conf

COPY start.sh /start.sh

CMD ["/start.sh"]