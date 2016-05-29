FROM ubuntu:14.04
MAINTAINER murisly "murisly2015@gmail.com"
RUN apt-get update
RUN apt-get install -y vim
EXPOSE 80