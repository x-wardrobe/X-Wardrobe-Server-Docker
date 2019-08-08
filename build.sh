#!/bin/bash

if [ ! -f "X-Wardrobe-Server.tar.gz" ];then
	rm X-Wardrobe-Server.tar.gz
fi

if [ ! -d "X-Wardrobe-Server" ];then
	rm -rf X-Wardrobe-Server
fi

cp -a ~/Workspace/X-Wardrobe-Server ./

tar -cvf X-Wardrobe-Server.tar.gz X-Wardrobe-Server

docker build -f Dockerfile -t xwardrobe:1.0 .
