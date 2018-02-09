FROM nimbix/centos-base:latest

ADD scripts/gnuplot.commands /tmp/gnuplot.commands
ADD url.txt /etc/NAE/url.txt
ADD NAE/AppDef.json /etc/NAE/AppDef.json

#RUN wget --post-file=/etc/NAE/AppDef.json --no-verbose https://api.jarvice.com/jarvice/validate -O -
RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://api.jarvice.com/jarvice/validate
