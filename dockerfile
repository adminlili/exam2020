FROM debian:latest
MAINTAINER adminlili
ENV DEBIAN_FRONTEND=noninteractive

RUN	apt-get update && \
	apt-get upgrade -y && \
        apt-get install -y pip3 && \
	pip3 install websocket

EXPOSE 5050

COPY server.py /root/server.py

STOPSIGNAL SIGTERM 

CMD /bin/bash
