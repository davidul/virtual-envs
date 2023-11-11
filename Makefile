include .env
export


build-all:
	make build-conda
	make build-jupyter
	make build-pg
	make build-mapnik
	make build-python-mapnik

build-pg:
	docker build -t $(POSTGRES) -f ./postgres/Dockerfile ./postgres

build-mapnik:
	docker build -t $(MAPNIK) --build-arg="BASE_CONTAINER=$(POSTGRES)" -f ./mapnik/Dockerfile ./mapnik

build-python-mapnik:
	docker build -t $(PYTHON_MAPNIK) --build-arg="BASE_CONTAINER=$(MAPNIK)" -f ./python-mapnik/Dockerfile ./python-mapnik

build-conda:
	docker build -t $(CONDA) -f ./conda/Dockerfile ./conda

build-jupyter:
	docker build -t $(JUPYTER) -f ./conda/jupyter/Dockerfile ./conda/jupyter



rmi-postgres:
	docker rmi $(PYTHON_MAPNIK)
	docker rmi $(MAPNIK)
	docker rmi $(POSTGRES)

rmi-conda:
	docker rm davidul-conda
	docker rmi davidul-conda