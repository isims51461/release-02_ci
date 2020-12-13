# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "isims51461" 
COPY ./webapp/target/release-02.war /usr/local/tomcat/webapps
