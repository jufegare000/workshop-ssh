FROM alpine

RUN apk add --no-cache openssh \
 && adduser -D sshclient \
 && echo "sshclient:password" | chpasswd

CMD ["/bin/sh"]
