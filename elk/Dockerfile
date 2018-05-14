FROM python:3.6-slim-stretch

RUN apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*

RUN pip install virtualenv

WORKDIR /src

COPY upstream-elasticsearch/Makefile upstream-elasticsearch/requirements.txt ./upstream-elasticsearch/
COPY upstream-logstash/Makefile upstream-logstash/requirements.txt ./upstream-logstash/
COPY upstream-kibana/Makefile upstream-kibana/requirements.txt ./upstream-kibana/

RUN make -C upstream-elasticsearch venv
RUN make -C upstream-logstash venv
RUN make -C upstream-kibana venv

COPY upstream-elasticsearch upstream-elasticsearch
COPY upstream-logstash upstream-logstash
COPY upstream-kibana upstream-kibana

RUN make -C upstream-elasticsearch dockerfile
RUN make -C upstream-logstash dockerfile
RUN make -C upstream-kibana dockerfile
