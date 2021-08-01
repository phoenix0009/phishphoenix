 GNU nano 5.8 Dockerfile
FROM debian:10
LABEL MAINTAINER=""

WORKDIR phishphoenix/
ADD . /phishphoemix

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./phishphoenix.sh"]
