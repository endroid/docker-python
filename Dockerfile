FROM python:3.12.3-alpine3.18

# Add entrypoint
ADD entrypoint.sh /home/root/entrypoint.sh

WORKDIR /app

RUN chown -R 1000 /app

RUN pip install --upgrade pip --no-warn-script-location
RUN apk add --no-cache git gcc musl-dev linux-headers py3-virtualenv python3-dev

RUN mkdir -p /.cache/pip
RUN chown -R 1000 /.cache/pip

USER 1000
