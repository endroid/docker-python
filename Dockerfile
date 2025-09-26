FROM python:3.13.7-alpine3.22

# Add entrypoint
COPY entrypoint.sh /home/root/entrypoint.sh

WORKDIR /app

RUN chown -R 1000 /app

RUN pip install --upgrade pip --no-warn-script-location
RUN apk add --no-cache bash gcc git py3-virtualenv python3-dev

RUN mkdir -p /.cache/pip
RUN chown -R 1000 /.cache/pip

USER 1000
