#! /bin/sh

docker run --name teamspeak -d -p 9987:9987/udp -p 30033:30033 -p 10011:10011 teamspeak
