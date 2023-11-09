
.PHONY: all

all: postgres conda

test:
	echo "test"

postgres:
	docker build -t davidul-postgres -f ./postgres/Dockerfile ./postgres

conda:
	docker build -t davidul-conda -f ./conda/Dockerfile ./conda

rmi-postgres:
	docker rmi davidul-python-mapnik
	docker rmi davidul-mapnik
	docker rmi davidul-postgres

rmi-conda:
	docker rm davidul-conda
	docker rmi davidul-conda