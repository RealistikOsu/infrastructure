#!/usr/bin/make

build:
	@docker build -t bancho-service: latest services/bancho-service

clone:
	@if [ ! -d services/bancho-service ]; then git clone https://github.com/RealistikOsu/bancho-service.git services/bancho-service; fi

pull:
	@cd services/bancho-service && git pull

run:
	@docker-compose up nginx postgres redis bancho-service