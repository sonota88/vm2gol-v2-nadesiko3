FROM ubuntu:18.04

RUN apt update \
  && apt install -y --no-install-recommends \
    ca-certificates \
    ruby \
    wget \
    xz-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ARG USER
ARG GROUP

RUN groupadd ${USER} \
  && useradd ${USER} -g ${GROUP} -m

USER ${USER}

WORKDIR /home/${USER}/

ARG version="16.13.0"
ARG archive_file="node-v${version}-linux-x64.tar.xz"

RUN wget -q https://nodejs.org/dist/v16.13.0/${archive_file} \
  && tar -xf ${archive_file} \
  && rm ${archive_file} \
  && mv node-v${version}-linux-x64/ node/

ENV PATH "/home/${USER}/node/bin:${PATH}"

RUN npm install -g nadesiko3@3.2.30

RUN mkdir /home/${USER}/work
WORKDIR /home/${USER}/work
