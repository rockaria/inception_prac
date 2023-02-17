# sudo mkdir -p ${HOME}/data/wordpress ${HOME}/data/mariadb ${HOME}/data/site ${HOME}/data/monitor
# sudo chmod 777 /etc/hosts
# sudo echo "127.0.0.1 seunchoi.42.fr" >> /etc/hosts

up:	
	docker-compose -f ./srcs/docker-compose.yml up --build -d

all: up

down:
	docker-compose -f ./srcs/docker-compose.yml down

vclean:
	docker volume rm mariadb_volume wordpress_volume

iclean:
	docker image rm mariadb wordpress nginx redis ftp