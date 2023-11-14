FROM python:3.12.0-alpine3.18

# Add entrypoint
ADD entrypoint.sh /home/root/entrypoint.sh

WORKDIR /app

RUN chown -R 1000 /app

RUN pip install --upgrade pip --no-warn-script-location
RUN pip install flask --no-warn-script-location

USER 1000
