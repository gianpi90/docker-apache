#ssh-server
SSH Server folder

This folder contains the project files of Docker SSH Server container.
<br>./Dockerfile
<br>./startSSH.sh

To build the image, run in the project directory the command:
<br>docker build -t \<name-image\> .

To run the image with the default password for root (password: 123), run the command:
<br>docker run -p \<host-port\>:22 -d \<id-image\>
<br>To run the image with a specified password, run the command:
<br>docker run -p \<host-port\>:22 -d \<id-image\> startSSH.sh \<password\>

To login to Docker container through SSH, type in the shell:
<br>ssh root@\<host-address\> -p \<host-port\>
<br>where \<host-port\> has been assigned with run command.

For debug run the command:
<br>docker run -p \<host-port\>:22 -it \<id-image\> bash
<br>startSSH.sh &
<br>you may add password argument with startSSH.sh

Docker ssh-server repository page:
<br>http://hub.docker.com/r/giancarlopiccolo/ssh-server/
