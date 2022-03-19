FROM ubuntu

COPY ./run.sh /run.sh

# sed -i 's/\/archive.ubuntu.com/\/cn.archive.ubuntu.com/g' /etc/apt/sources.list \
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install git -y \
    && apt-get autoremove -y \
    && chmod 0777 /run.sh

VOLUME /src

WORKDIR /src

CMD ["/run.sh"]
