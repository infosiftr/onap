# https://hub.docker.com/r/infosiftronap/flyway/

- https://github.com/flyway/flyway-docker
- https://github.com/flyway/flyway-docker/blob/master/alpine/Dockerfile

## `arm64`

```console
$ docker build -t infosiftronap/flyway:arm64 https://github.com/flyway/flyway-docker.git#3acfce5cc0f5b4fc37b5cfc96a6725c80ab07c87:alpine
...
$ docker push infosiftronap/flyway:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/flyway:amd64 https://github.com/flyway/flyway-docker.git#3acfce5cc0f5b4fc37b5cfc96a6725c80ab07c87:alpine
...
$ docker push infosiftronap/flyway:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./flyway.yml
...
```
