# https://hub.docker.com/r/infosiftronap/elasticsearch/

- https://github.com/elastic/elasticsearch-docker

# https://hub.docker.com/r/infosiftronap/logstash/

- https://github.com/elastic/logstash-docker

# https://hub.docker.com/r/infosiftronap/kibana/

- https://github.com/elastic/kibana-docker

## prep

To regenerate `Dockerfile`s from upstream sources, use `./generate-dockerfiles.sh` (results of running this script on the current submodule checkouts is committed).

## `arm64`

```console
$ docker build -t infosiftronap/elasticsearch:arm64 -f elasticsearch/Dockerfile-oss elasticsearch
$ docker push infosiftronap/elasticsearch:arm64
...
$ docker build -t infosiftronap/logstash:arm64 -f logstash/Dockerfile-oss logstash
$ docker push infosiftronap/logstash:arm64
...
$ docker build -t infosiftronap/kibana:arm64 -f kibana/Dockerfile-oss kibana
$ docker push infosiftronap/kibana:arm64
...
```

## `amd64`

We use the Elastic-built artifacts for `amd64` given the `arm64`-compiled Go binary in Logstash: (pulled and re-pushed given that `manifest-tool` requires them to be hosted on the same registry in order to compile the manifest list)

```console
$ ver="$(jq -r '.version' upstream-elasticsearch/version.json)"
$ docker pull "docker.elastic.co/elasticsearch/elasticsearch-oss:$ver"
$ docker tag "docker.elastic.co/elasticsearch/elasticsearch-oss:$ver" infosiftronap/elasticsearch:amd64
$ docker push infosiftronap/elasticsearch:amd64
...
$ ver="$(jq -r '.version' upstream-logstash/version.json)"
$ docker pull "docker.elastic.co/logstash/logstash-oss:$ver"
$ docker tag "docker.elastic.co/logstash/logstash-oss:$ver" infosiftronap/logstash:amd64
$ docker push infosiftronap/logstash:amd64
...
$ ver="$(jq -r '.version' upstream-kibana/version.json)"
$ docker pull "docker.elastic.co/kibana/kibana-oss:$ver"
$ docker tag "docker.elastic.co/kibana/kibana-oss:$ver" infosiftronap/kibana:amd64
$ docker push infosiftronap/kibana:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./elasticsearch.yml
...
$ manifest-tool push from-spec ./logstash.yml
...
$ manifest-tool push from-spec ./kibana.yml
...
```
