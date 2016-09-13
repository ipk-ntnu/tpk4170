FROM andrewosh/binder-base

MAINTAINER Lars Tingelstad <lars.tingelstad@ntnu.no>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y octave

USER main

# Install requirements for Python 2
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
