FROM ubuntu:latest

RUN apt-get update -y \
    && apt-get install -y python \
    && apt-get install -y ansible
