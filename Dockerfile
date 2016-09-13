FROM andrewosh/binder-base

MAINTAINER Lars Tingelstad <lars.tingelstad@ntnu.no>

USER root

# Add dependency
#RUN apt-get update
#RUN apt-get install -y octave

USER main

# Install requirements for Python 2
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
    && jupyter nbextension enable --py --sys-prefix pythreejs
    && jupyter nbextension enable --py --sys-prefix widgetsnbextension
    # && python -m octave_kernel.install
