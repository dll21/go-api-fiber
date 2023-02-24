test:
	docker-compose -f docker-compose.ci.yml up --build --abort-on-container-exit
	docker-compose -f docker-compose.ci.yml down --volumes
