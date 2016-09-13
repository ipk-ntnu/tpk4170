FROM andrewosh/binder-base

MAINTAINER Lars Tingelstad <lars.tingelstad@ntnu.no>

# Install requirements for Python 2
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
