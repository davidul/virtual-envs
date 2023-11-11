ARG BASE_CONTAINER
FROM ${BASE_CONTAINER}

USER root

RUN apt-get install -y --no-install-recommends libharfbuzz-dev
RUN apt-get install -y --no-install-recommends libicu-dev
RUN apt-get install -y --no-install-recommends libcairo-dev
RUN apt-get install -y --no-install-recommends libgdal-dev
RUN apt-get install -y --no-install-recommends libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev libboost-system-dev libboost-thread-dev
RUN apt-get install -y --no-install-recommends libtiff5-dev libfreetype6-dev libxml2-dev libproj-dev libsqlite3-dev libgdal-dev libcairo-dev python-cairo-dev


RUN ln -s /usr/bin/python3 /usr/bin/python \
    && git clone https://github.com/mapnik/mapnik.git \
    && cd mapnik \
    && git checkout v3.0.x \
    && git submodule update --init \
    && ./configure \
    && make \
    && make install