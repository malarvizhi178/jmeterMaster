FROM malar178/jmeter-base:latest
MAINTAINER Malar178

RUN chgrp -R 0 /jmeter && \
    chmod -R g=u /jmeter
    
RUN chgrp -R 0 /jmeter-server.log && \
    chmod -R g=u /jmeter-server.log
    
RUN chgrp -R 0 /jmeter.log && \
    chmod -R g=u /jmeter.log

EXPOSE 60000
