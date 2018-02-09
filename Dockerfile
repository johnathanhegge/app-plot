FROM nimbix/centos-base:latest

ADD scripts/gnuplot.commands /tmp/gnuplot.commands
ADD url.txt /etc/NAE/url.txt
ADD NAE/AppDef.json /etc/NAE/AppDef.json

RUN yum clean all && yum -y install gnuplot

RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://api.jarvice.com/jarvice/validate
