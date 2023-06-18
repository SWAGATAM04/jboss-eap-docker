# jboss-eap-docker maven build
To build the maven jboss-eap package ,in your server you should have maven and jboss EAP 7.4-GA [9990 port] installed and running.
Jboss eap can be running as a service or as a container on the server.

# Build the maven package
mvn clean package wildfly:deploy

# Docker build 
docker build -t jboss-helloworld .

# Run the docker container 

docker run -itd -p 8080:8080 -p 9990:9990 jboss-helloworld

# How to check if jboss is installed within container ?
After Deployment jboss will be on /opt/eap/standalone/tmp/ within container.

