FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server sudo
RUN mkdir /var/run/sshd
RUN useradd -ms /bin/bash user
RUN echo 'user:password' | chpasswd
RUN adduser user sudo

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]