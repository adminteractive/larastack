FROM debian:jessie-slim

RUN apt-get update \
	&& apt-get install -y \
	iputils-ping \
	git \
	curl \
	nano \
	vim \
	&& rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_8.x |  bash -

RUN apt-get update \
  && apt-get install -y \
	nodejs \
	build-essential \
	&& rm -rf /var/lib/apt/lists/*

RUN npm install -g \
	gulp \
	bower

COPY ./src/etc/bash.bashrc /etc/bash.bashrc

WORKDIR /usr/local/apache2/htdocs

COPY ./src/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh