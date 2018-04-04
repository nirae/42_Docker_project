#! /bin/sh

docker run -d -p 80:3000 --name ex02 --restart=always railsapp
