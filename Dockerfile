FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

VOLUME /opt/certstrap/

ADD https://dl.bintray.com/jchen/docku/latest/certstrap /usr/sbin/certstrap
RUN chmod +x /usr/sbin/certstrap

RUN mkdir -p /opt/certstrap/

WORKDIR /opt/certstrap
ENTRYPOINT ["/usr/sbin/certstrap"]
