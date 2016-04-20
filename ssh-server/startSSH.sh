#!/bin/bash

# this script starts the ssh server

# add a password for the root user. If argument is not set add the default password for root
if [ $# -eq 0 ]
then
   echo "root:${password}" | chpasswd
else
   echo "root:$1" | chpasswd
fi

# run the ssh server
/usr/sbin/sshd -D
