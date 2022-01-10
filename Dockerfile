FROM python:3.8

RUN useradd -ms /bin/bash python

WORKDIR /app

RUN chown -R 1000 /app

USER python
