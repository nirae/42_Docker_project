# Based on
FROM debian:jessie

# Owner
LABEL maintainer="ndubouil@student.42.fr"

# Updates and installing
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget bzip2 -y

ENV TS3SERVER_LICENSE accept

EXPOSE 9987/udp 10011 30033

ADD creating_server.sh /teamspeak/
RUN sh /teamspeak/creating_server.sh

CMD sh /teamspeak/ts3server_minimal_runscript.sh
