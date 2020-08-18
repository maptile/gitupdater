FROM alpine

COPY ./run.sh /run.sh

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
        && apk add --update git \
        && apk upgrade \
        && apk add --no-cache ca-certificates \
        && chmod 0777 /run.sh

VOLUME /src

WORKDIR /src

CMD ["/run.sh"]
