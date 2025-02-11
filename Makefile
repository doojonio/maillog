DOCKER_COMPOSE = docker compose -f ./docker_compose.yml

start_db:
	@$(DOCKER_COMPOSE) up -d db

migrate:
	@$(DOCKER_COMPOSE) run maillog ./MailLog migrate

parse:
	@$(DOCKER_COMPOSE) run maillog ./MailLog parse

up:
	@$(DOCKER_COMPOSE) up -d

psql:
	@$(DOCKER_COMPOSE) exec db psql -d maillog_db -U maillog_user

down:
	@$(DOCKER_COMPOSE) down

help:
	@echo "Makefile targets:"
	@echo "  start_db : Start database container"
	@echo "  migrate  : Run database migrations"
	@echo "  parse    : Parse data"
	@echo "  up       : Start containers and webserver"
	@echo "  down     : Stop and remove containers"
	@echo "  help     : Show this help message"
