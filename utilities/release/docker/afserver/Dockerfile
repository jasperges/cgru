FROM ubuntu:14.04

ADD http://downloads.sourceforge.net/project/cgru/2.0.7/cgru.2.0.7.ubuntu14.04.3_amd64.tar.gz /tmp
WORKDIR /tmp
RUN apt-get -qq update \
 && apt-get -y install \
 	libpq5 \
 	libpython2.7 \
 && apt-get -yqq clean \
 && rm -rf /var/lib/apt/lists/* \
 && tar xzvf cgru*.tar.gz \
 && dpkg -i /tmp/cgru-common*.deb /tmp/afanasy-common*.deb /tmp/afanasy-server*.deb \
 && rm -r /tmp/*

WORKDIR /opt/cgru
EXPOSE 51000
VOLUME /var/tmp/afanasy
CMD ["start/AFANASY/_afserver.sh"]