# https://hub.docker.com/r/infosiftronap/jenkins/

- https://hub.docker.com/r/jenkins/jenkins/
- https://github.com/jenkinsci/docker/blob/master/Dockerfile-alpine

## `arm64`

```console
$ docker build -t infosiftronap/jenkins:arm64 -f Dockerfile-alpine https://github.com/jenkinsci/docker.git#1b818c9bc4fca81f2c0bb28b8530892f0afadf21
...
$ docker push infosiftronap/jenkins:arm64
...
```

## `amd64`

```console
$ docker build -t infosiftronap/jenkins:amd64 -f Dockerfile-alpine https://github.com/jenkinsci/docker.git#1b818c9bc4fca81f2c0bb28b8530892f0afadf21
...
$ docker push infosiftronap/jenkins:amd64
...
```

## elsewhere

- https://github.com/estesp/manifest-tool

```console
$ manifest-tool push from-spec ./jenkins.yml
...
```
