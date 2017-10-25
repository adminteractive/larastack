FROM debian:jessie-slim

RUN apt-get update \
	&& apt-get install -y \
	iputils-ping \
	git \
	curl \
	nano \
	vim \
	sudo \
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
COPY ./src/etc/bash.bashrc /etc/skel/.bashrc
COPY ./src/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN useradd --shell /bin/bash -u 9001 -o -c "" -U -m container
RUN usermod -aG sudo container
RUN echo "container ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod +x /usr/local/bin/entrypoint.sh

USER container

WORKDIR /usr/local/apache2/htdocs

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]