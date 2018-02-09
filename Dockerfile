FROM nimbix/centos-base:latest

RUN curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
        | bash

ADD url.txt /etc/NAE/url.txt
ADD AppDef.json /etc/NAE/AppDef.json

RUN wget --post-file=/etc/NAE/AppDef.json --no-verbose https://api.jarvice.com/jarvice/validate -O -