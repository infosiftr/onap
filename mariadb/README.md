# https://hub.docker.com/r/infosiftronap/mariadb/

- https://github.com/docker-library/mariadb/issues/125

## `arm64`

```console
$ docker build -t infosiftronap/mariadb:arm64 .
...
$ docker push infosiftronap/mariadb:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/mariadb:amd64 .
...
$ docker push infosiftronap/mariadb:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./mariadb.yml
...
```
