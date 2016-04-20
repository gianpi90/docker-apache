FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y upgrade

# install openssh server
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install openssh-server curl lynx-cur nano

RUN mkdir /var/run/sshd

RUN sed -i 's/PermitRootLogin\s*without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

# set default password variable for root
ENV password 123

# add init script in the image
ADD ./startSSH.sh /usr/local/bin/startSSH.sh
RUN chmod +x /usr/local/bin/startSSH.sh

# expose the port of ssh service
EXPOSE 22

# by default run ssh script with default password
# (you may add password argument in run command)
CMD ["/usr/local/bin/startSSH.sh"]
