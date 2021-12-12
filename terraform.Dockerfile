FROM alpine
LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"
RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d / && \
    apk add ca-certificates
USER nobody
ENTRYPOINT [ "/terraform" ]
