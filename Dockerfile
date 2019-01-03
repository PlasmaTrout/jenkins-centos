FROM centos:latest
MAINTAINER Jeff Downing <jeff.downing@aitengineering.com>

RUN yum update -y
RUN yum install java -y

RUN mkdir -p /opt/jenkins
ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /opt/jenkins

EXPOSE 8080
CMD cd /opt/jenkins && java -jar jenkins.war --httpPort=8080