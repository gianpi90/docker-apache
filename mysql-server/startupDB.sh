#!/bin/bash

# This script starts the mysql server

/usr/sbin/mysqld &
sleep 5

# add a proper user that manage the DB from the host (also based on arguments of script)
if [ $# -ge 1 ]
then
   echo "DROP USER '$1'@'%';" | mysql
   echo "CREATE USER '$1' IDENTIFIED BY '$2';" | mysql
   echo "GRANT ALL PRIVILEGES ON *.* TO '$1'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql
else
   echo "DROP USER '$user'@'%';" | mysql
   echo "CREATE USER '$user' IDENTIFIED BY '$password';" | mysql
   echo "GRANT ALL PRIVILEGES ON *.* TO '$user'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql
fi

# restart mysql server
mysqladmin shutdown
echo "Starting MySQL Server"
/usr/sbin/mysqld
