#! /bin/bash

# Booting xwardrobe container
docker run --name xward-server \
			-p 8080:8080 -p 3307:3306 \
			-d xwardrobe:1.0

# Booting mysql container
docker run --name x-mysql \
	--net=container:xward-server \
	-v $PWD/data:/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=mysql1234 \
	-e MYSQL_DATABASE=xwardrobe \
	-e MYSQL_USER=xwardrobe \
	-e MYSQL_PASSWORD=mysql1234 \
	-it mysql:8.0.17

# docker exec -i x-mysql sh -c 'exec mysql -uroot -p"mysql1234"' < $PWD/xwardrobe_user0.sql
