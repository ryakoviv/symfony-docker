EXEC_PHP ?= docker-compose exec php

cache-clear:
	$(EXEC_PHP) php bin/console cache:clear

vendor:
	$(EXEC_PHP) composer install

vendor-update:
	$(EXEC_PHP) composer update

migrate:
	$(EXEC_PHP) php bin/console doctrine:migrations:migrate

start:
	docker-compose up -d

stop:
	docker-compose stop
