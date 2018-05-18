# https://hub.docker.com/r/infosiftronap/jetty/

- https://hub.docker.com/_/jetty/
- https://github.com/appropriate/docker-jetty/blob/master/9.4-jre8/alpine/Dockerfile

## `arm64`

```console
$ docker build -t infosiftronap/jetty:arm64 https://github.com/appropriate/docker-jetty.git#8690c638b36f2d3ad79b82ff27a6bfadb0332890:9.4-jre8/alpine
...
$ docker push infosiftronap/jetty:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/jetty:amd64 https://github.com/appropriate/docker-jetty.git#8690c638b36f2d3ad79b82ff27a6bfadb0332890:9.4-jre8/alpine
...
$ docker push infosiftronap/jetty:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./jetty.yml
...
```
