FROM resin/raspberrypi-python:3.5

# Enable systemd
#ENV INITSYSTEM on

MAINTAINER Koen Rutten <lijst@twilights.be>

# Install Supervisord
RUN apt-get update && apt-get install -y supervisor \
&& rm -rf /var/lib/apt/lists/*

#Upgrade pip and install uwsgi, flask and flask-ask
RUN pip install --upgrade pip \
    && pip install uwsgi flask flask-ask
