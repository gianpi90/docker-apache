# tomcat-server
Tomcat Server folder

This folder contains the Dockerfile of the Tomcat-Server container running in an Ubuntu image.

To build this image, run in the project directory the command:
<br>docker build -t \<name-image\> .

Run this image with command:
<br>docker run -p \<port-host\>:8080 -d \<id-image\>

For debug run with command:
<br>docker run -p \<port-host\>:8080 -it \<id-image\> bash
<br>$CATALINA_HOME/bin/startup.sh

