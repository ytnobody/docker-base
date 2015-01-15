FROM debian
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update && apt-get install perl curl make gcc git libplack-perl -y && apt-get clean

RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm && chmod +x /usr/bin/cpanm

RUN rm -f /etc/localtime && ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime ; fi

ENTRYPOINT ["/bin/bash"]
