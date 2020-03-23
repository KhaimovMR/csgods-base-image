FROM ubuntu:14.04

MAINTAINER Michael Khaimov <khaimovmr@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TERM=xterm-256color                                                                                                                                        
RUN mkdir -p /var/log/csgods/backups
VOLUME /var/log

RUN dpkg --add-architecture i386
RUN apt-get update -q
RUN apt-get install -qy vim tmux mc tar wget lib32gcc1 lib32stdc++6 git git-core htop iptraf strace software-properties-common expect zlib1g:i386 libffi6:i386

RUN mkdir /root/steamcmd
WORKDIR /root/steamcmd


CMD ['tail', '-f', '/dev/null']
