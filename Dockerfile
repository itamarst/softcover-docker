FROM ruby:2.3
ADD build.sh /tmp
RUN /bin/sh /tmp/build.sh

ENTRYPOINT ["softcover"]