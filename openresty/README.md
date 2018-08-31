# https://hub.docker.com/r/infosiftronap/openresty/

- https://github.com/openresty/openresty/issues/353#issuecomment-406012180

(might be officially available at some point)

## `arm64`

```console
$ docker build -t infosiftronap/openresty:arm64 -f alpine/Dockerfile --build-arg RESTY_J="$(nproc)" https://github.com/openresty/docker-openresty.git#ad266fa27f65a7c092381c6ff328ffed737f672b
...
$ docker push infosiftronap/openresty:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/openresty:amd64 -f alpine/Dockerfile --build-arg RESTY_J="$(nproc)" https://github.com/openresty/docker-openresty.git#ad266fa27f65a7c092381c6ff328ffed737f672b
...
$ docker push infosiftronap/openresty:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./openresty.yml
...
```
