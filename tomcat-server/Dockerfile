FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y upgrade

# install tomcat server and utilities
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tomcat7 tomcat7-examples default-jdk curl lynx-cur nano

# configure environment variables
ENV JAVA_HOME /usr/lib/jvm/default-java
ENV CATALINA_HOME /usr/share/tomcat7
ENV CATALINA_BASE /var/lib/tomcat7

# expose the port of the service
EXPOSE 8080

# by default run tomcat
CMD ["/usr/share/tomcat7/bin/catalina.sh", "run"]

