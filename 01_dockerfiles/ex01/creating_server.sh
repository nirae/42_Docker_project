#! /bin/sh

mkdir /teamspeak
wget http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
tar xvf teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
mv teamspeak3-server_linux-amd64/* /teamspeak/
rm -rf teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
rm -rf teamspeak3-server_linux-amd64

groupadd teamspeak
useradd -g teamspeak -d /teamspeak teamspeak
chown -R teamspeak:teamspeak /teamspeak
