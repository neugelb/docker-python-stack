FROM python:3

MAINTAINER Stefan Baur <stefan.baur@neugelb.com>


COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt