FROM debian
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update && apt-get install perl curl make gcc git libplack-perl -y && apt-get clean

RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm && chmod +x /usr/bin/cpanm

ENTRYPOINT if [ $TIMEZONE ] ; then rm -f /etc/localtime && ln -fs /usr/share/zoneinfo/$TIMEZONE /etc/localtime ; fi ; /bin/bash
