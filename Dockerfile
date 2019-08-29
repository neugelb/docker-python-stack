FROM python:3.6

MAINTAINER Stefan Baur <stefan.baur@neugelb.com>

RUN apt-get -y update && apt-get install -y \
    libblas3 \
    liblapack3 \
    libhdf5-dev \
    libquadmath0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

COPY requirements.txt /tmp/
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h && pip3 install --no-cache-dir Cython && pip3 install --no-cache-dir -r /tmp/requirements.txt