FROM kubernautslabs/jmeter-base:latest
MAINTAINER Malar

RUN groupadd -g 2019 nodeuser && \
    useradd -r -u 2019 -g nodeuser nodeuser

RUN chown -R nodeuser:root /jmeter && \
    chmod -R g=u /jmeter
RUN ls -al

USER nodeuser

EXPOSE 60000
