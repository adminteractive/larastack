FROM debian:jessie-slim

RUN apt-get update \
	&& apt-get install -y \
	iputils-ping \
	git \
	curl \
	nano \
	vim

RUN curl -sL https://deb.nodesource.com/setup_8.x |  bash -

RUN apt-get install -y \
	nodejs \
	build-essential

RUN npm install -g \
	gulp \
	bower

COPY ./src/etc/bash.bashrc /etc/bash.bashrc

RUN apt-get install -y iputils-ping

WORKDIR /usr/local/apache2/htdocs

CMD ["/bin/ping", "localhost", "-i", "3"]