# docker-apache
Docker-Apache Server Repository

This repository contains the Dockerfile and the other files of the project:
<br>./Dockerfile
<br>./apache-config.conf
<br>./www/index.html

To build this image, keep the paths of the files in the project and run in the project directory the command:
docker build -t <name-image> .

Run this image with command:
docker run -p <port-host>:80 -d <id-image>

For debug run with command:
docker run -p <port-host>:80 -it <id-image> bash
apachectl start
