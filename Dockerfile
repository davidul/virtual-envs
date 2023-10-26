FROM postgis/postgis:16-3.4

#RUN apt update &&  apt upgrade -y
#
#    && \
RUN apt update && apt install -y osm2pgsql git

#RUN apt install -y gcc-9 g++-9 clang-9
#RUN apt install -y build-essential clang

#RUN export CXX="clang" && export CC="clang"

#RUN apt-get install -y python3 zlib1g-dev make pkg-config curl

SHELL ["/bin/bash", "-c"]

#RUN echo 'alias python=/usr/bin/python3' >> ~/.bashrc
#RUN source ~/.bashrc

#RUN ln -s /usr/bin/python3 /usr/bin/python && \
#    git clone https://github.com/mapnik/mapnik mapnik --depth 10 && \
#    cd mapnik && \
#    git submodule update --init && \
#    ./bootstrap.sh && \
#    ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0" CXX=${CXX} CC=${CC} && \
#    make && \
#    make install
#
#    alias python=python3 && \
#    ./bootstrap.sh && \
#    ./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0" CXX=${CXX} CC=${CC} && \
#    make && \
#    make install

#RUN export LC_ALL="en_US.UTF-8" && \
#    export LC_CTYPE="en_US.UTF-8" && \
#    export LANGUAGE="en_US.UTF-8" && \
#    export LANG="en_US.utf-8" \

#locale
#LANG=en_US.utf8
#LANGUAGE=
#LC_CTYPE="en_US.UTF-8"
#LC_NUMERIC="en_US.UTF-8"
#LC_TIME="en_US.UTF-8"
#LC_COLLATE="en_US.UTF-8"
#LC_MONETARY="en_US.UTF-8"
#LC_MESSAGES="en_US.UTF-8"
#LC_PAPER="en_US.UTF-8"
#LC_NAME="en_US.UTF-8"
#LC_ADDRESS="en_US.UTF-8"
#LC_TELEPHONE="en_US.UTF-8"
#LC_MEASUREMENT="en_US.UTF-8"
#LC_IDENTIFICATION="en_US.UTF-8"
#LC_ALL=en_US.UTF-8

#_=/usr/bin/env
#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/16/bin
#PGDATA=/var/lib/postgresql/data
#SHLVL=1
#TERM=xterm
#PG_VERSION=16.0-1.pgdg110+1
#PG_MAJOR=16
#GOSU_VERSION=1.16
#LANG=en_US.utf8
#HOME=/root
#PWD=/
#POSTGIS_MAJOR=3
#POSTGIS_VERSION=3.4.0+dfsg-1.pgdg110+1
#POSTGRES_PASSWORD=password
#HOSTNAME=6458967fb46a