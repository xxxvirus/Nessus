FROM ubuntu:latest

RUN apt-get install -y python \
    && apt-get install -y ansible

CMD tail -f /dev/null
