# https://hub.docker.com/r/infosiftronap/consul/

- https://github.com/hashicorp/docker-consul/pull/82
- https://github.com/docker-library/official-images/pull/4328

(should be officially available "soon")

## `arm64`

```console
$ docker build -t infosiftronap/consul:arm64 https://github.com/hashicorp/docker-consul.git#e55eb42b1f60434ede55c021743117e190e60e8d:0.X
...
$ docker push infosiftronap/consul:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/consul:amd64 https://github.com/hashicorp/docker-consul.git#e55eb42b1f60434ede55c021743117e190e60e8d:0.X
...
$ docker push infosiftronap/consul:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./consul.yml
...
```
