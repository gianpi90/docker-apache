#mysql-server
MySQL Server folder

This folder contains the files of the MySQL Docker container:
<br>./Dockerfile
<br>./startupDB.sh

To build the image, run in the project directory the command:
<br>docker build -t \<name-image\> .

To run the image with the default user (user: userdock; password: 123) and the persistentDB-path, run the command:
<br>docker run -p \<host-port\>:3306 -v \<host-DBpath\>:/var/lib/mysql -d \<id-image\>
<br>note: docker must have permissions on host-DBpath

To run the image with a specified user, run the command:
<br>docker run -p \<host-port\>:3306 -v \<host-DBpath\>:/var/lib/mysql -d \<id-image\> startupDB.sh \<username\> \<password\>

For debug run the command:
<br>docker run -p \<host-port\>:3306 -v \<host-DBpath\>:/var/lib/mysql -it \<id-image\> bash
<br>startupDB.sh &
<br>you may add user and password arguments with startupDB.sh

Docker mysql-server repository page:
<br>http://hub.docker.com/r/giancarlopiccolo/mysql-server/
