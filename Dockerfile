FROM python:3.5

MAINTAINER Julien Maupetit <julien@tailordev.fr>

ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libatlas-base-dev gfortran

RUN mkdir -p /opt/pandas/build/

COPY requirements.txt /opt/pandas/build/requirements.txt

RUN pip install -r /opt/pandas/build/requirements.txt
