#!/bin/sh

exec java ${JAVA_OPTIONS} -XX:+AlwaysPreTouch -noverify -jar /opt/app/spring-petclinic.jar ${@}
