FROM adoptopenjdk:11-jre-hotspot

MAINTAINER Vaibhav Natu <vaibhav@cognologix.com>
VOLUME /tmp
RUN mkdir /opt/app
ADD target/spring-petclinic-*.jar /opt/app/spring-petclinic.jar
ADD run.sh /opt/app/run.sh
RUN chmod -R 777 /opt/app

RUN addgroup --gid 1001 demo && adduser --uid 1002 --gid 1001 --quiet --disabled-password --no-create-home demouser
USER demouser

ENTRYPOINT ["/opt/app/run.sh"]
