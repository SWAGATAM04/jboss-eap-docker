# dockerfile to build image for JBoss EAP 7.4

#start from eap74-openshift
FROM swagatam04/jboss-eap-7-eap74-openjdk8-openshift-rhel7:latest

# file author / maintainer
MAINTAINER "Swagatam" "skundu012@gmail.com"

# Copy war to deployments folder
COPY target/*.war $JBOSS_HOME/standalone/deployments/

# User root to modify war owners
USER root

# Modify owners war
RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/helloworld.war

# Important, use jboss user to run image
USER jboss

