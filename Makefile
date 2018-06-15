# docker-grafana-graphite makefile

# Environment Varibles
CONTAINER = kamon-grafana-dashboard

.PHONY: up

pull :
	PORT=8080 docker-compose pull

up : pull
	PORT=8080 docker-compose up -d

down :
	docker-compose down

shell :
	docker exec -ti $(CONTAINER) /bin/bash

tail :
	docker logs -f $(CONTAINER)
