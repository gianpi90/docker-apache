FROM ubuntu:14.04

# add mysql group and user
RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update
RUN apt-get -y upgrade

# install mysql and other tools
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server curl lynx-cur nano

# enable remote access
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

# set default environment variables
ENV user userdock
ENV password 123

ADD ./startupDB.sh /usr/local/bin/startupDB.sh
RUN chmod +x /usr/local/bin/startupDB.sh

# set DB persistence
VOLUME /var/lib/mysql

# expose the port of the DB service
EXPOSE 3306

# By default run startupDB
# (you may add user and password as arguments in run command if you want change these values)
CMD /usr/local/bin/startupDB.sh

