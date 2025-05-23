# Dockerfile-servidor
FROM alpine

RUN apk add --no-cache openssh \
 && adduser -D sshuser \
 && echo "sshuser:password" | chpasswd \
 && ssh-keygen -A \
 && echo "PermitRootLogin no" >> /etc/ssh/sshd_config \
 && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
