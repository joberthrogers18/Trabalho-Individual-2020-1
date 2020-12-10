container_api := "api_github-profile-index"
container_frontend := "frontend_github-profile-index"

build:
	sudo docker-compose build

run:
	sudo docker-compose up

create-db:
	sudo docker-compose run ${container_api} rake db:create

migrate-db:
	sudo docker-compose run ${container_api} rake db:migrate

remove-all-instances:
	sudo docker-compose down --rmi all -v

test-api:
	sudo docker-compose run ${container_api} bundle exec rails test

test-client:
	sudo docker-compose run ${container_frontend} yarn run test:unit
