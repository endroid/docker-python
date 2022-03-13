FROM python:3.8

RUN useradd -ms /bin/bash python

# Add entrypoint
ADD entrypoint.sh /home/root/entrypoint.sh

WORKDIR /app

RUN chown -R 1000 /app

USER python

RUN pip install --upgrade pip --no-warn-script-location
RUN pip install flask --no-warn-script-location
