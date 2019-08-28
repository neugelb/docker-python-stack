FROM python:3

MAINTAINER Stefan Baur <stefan.baur@neugelb.com>


COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt