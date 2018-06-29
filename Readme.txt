A docker compose environment

	* to start a mysql container on a persistent data directory
	* to launch a phpmyadmin container linked on the same database
	* to start a laravel environment
	* and a jenkins server

## To start the containers:
docker-compose up

## To manually build the container
docker build -t lara .

As the container contains correct version of PHP and composer, the projects need
to be created by the containers:

docker run -i -v $PWD:/var/www -t lara  /bin/bash
composer create-project --prefer-dist laravel/laravel blog

## Manuel commands that we want to achieve

export MYSQL_ROOT_PASSWORD='toto'

phpmyadmin should be available on http://localhost:9999
with the user root and the password defined in the environment variable.

And it must be be equivalent to the following command lines:

docker run --name mysql -v /data/docker/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -d mysql
docker run --name myadmin -d --link mysql:db -p 9999:80 phpmyadmin/phpmyadmin

## Others commands

To stop the environment:
docker-compose down

The containers can also be stopped using Ctrl-c on the console.

When you run again "docker-compose up", the database is restarted and it is possible to access the data.


To chek that the containers are up and running:
docker ps

