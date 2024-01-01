FROM ubuntu

COPY ./run.sh /run.sh

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install git -y \
    && apt-get autoremove -y \
    && chmod 0777 /run.sh \
    &&  useradd -m ubuntu

VOLUME /src

WORKDIR /src

USER ubuntu

CMD ["/run.sh"]
