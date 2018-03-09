FROM alpine:3.7
EXPOSE 22

RUN apk add --no-cache openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && sed -i s/#GatewayPorts.*/GatewayPorts\ yes/ /etc/ssh/sshd_config \
  && echo "root:root" | chpasswd
