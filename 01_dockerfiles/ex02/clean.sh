#! /bin/sh

docker rm -f ex02
docker rmi ft-rails:on-build
docker rmi railsapp
