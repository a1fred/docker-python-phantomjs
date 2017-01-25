FROM python:3.6
MAINTAINER Dmitry Simonov <demalf@gmail.com>

ENV PHANTOMJS_VERSION 1.9.8
ENV PHANTOMJS_PLATFORM linux-x86_64

RUN mkdir -p /srv/var && \
  wget -q --no-check-certificate -O /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-${PHANTOMJS_PLATFORM}.tar.bz2 && \
  tar -xjf /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 -C /tmp && \
  rm -f /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64.tar.bz2 && \
  mv /tmp/phantomjs-$PHANTOMJS_VERSION-linux-x86_64/ /usr/local/share/phantomjs && \
  ln -s /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/PHANTOMJS_VERSION
