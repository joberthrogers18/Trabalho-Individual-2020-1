container_api := "api_github-profile-index"

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
