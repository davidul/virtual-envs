FROM david-mapnik:latest

RUN apt-get install -y libboost-all-dev

RUN git clone https://github.com/mapnik/python-mapnik.git \
    && cd python-mapnik \
    && git checkout v3.0.x

RUN cd python-mapnik && BOOST_PYTHON_LIB=boost_python38 python setup.py install