FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN set -ex && apt-get update && apt-get upgrade -y  \
    && apt-get install -y git \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip \
    && apt-get install -y curl ca-certificates \
    && apt-get install -y postgresql-common \
    && apt-get install -y unzip

RUN /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y \
    && apt-get install -y  postgresql-15 postgis postgresql-15-postgis-3

RUN mkdir -p /var/lib/pgsql/data \
    && chown -R postgres:postgres /var/lib/pgsql/data \
    && chmod -R 700 /var/lib/pgsql/data

USER postgres
RUN    /usr/lib/postgresql/15/bin/initdb -D /var/lib/pgsql/data
COPY postgresql.conf /etc/postgresql/15/main/postgresql.conf
COPY pg_hba.conf /etc/postgresql/15/main/pg_hba.conf
CMD ["/usr/lib/postgresql/15/bin/postgres", "-D", "/var/lib/pgsql/data", "-c", "config_file=/etc/postgresql/15/main/postgresql.conf"]