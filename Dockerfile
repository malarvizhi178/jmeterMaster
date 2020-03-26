FROM kubernautslabs/jmeter-base:latest
MAINTAINER Malar

RUN groupadd -g 2019 guest && \
    useradd -r -u 2019 -g guest guest

RUN chown -R guest:root /jmeter && \
    chmod -R g=u /jmeter
RUN ls -al

USER guest

EXPOSE 60000
