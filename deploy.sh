#!/usr/bin/env /bin/bash

docker stack deploy --prune --with-registry-auth -c docker-compose.yml web-api