#!/usr/bin/env bash
set -Eeuo pipefail

docker build .
img="$(docker build -q .)"

for elk in \
	elasticsearch \
	logstash \
	kibana \
; do
	if [ "$elk" = 'logstash' ]; then
		( cd upstream-logstash && make env2yaml )
	fi

	rsync -avP --delete "upstream-$elk/build/$elk/" "$elk/"

	docker run --rm "$img" cat "upstream-$elk/build/$elk/Dockerfile-oss" > "$elk/Dockerfile-oss"
done
