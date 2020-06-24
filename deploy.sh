#!/bin/sh

for s in services/*; do
    if [ -d "$s" ]; then
        BUILD_SCRIPT="$(pwd)/$s/scripts/build.sh"

        if test -f "$BUILD_SCRIPT"; then
            cd $(dirname "$BUILD_SCRIPT") && . "$BUILD_SCRIPT"
            cd -
        else
            echo "build script does not exist for $s, create one."
        fi
    fi
done

echo "deploying redis"
oc new-app -e REDIS_PASSWORD=test --template="openshift/redis-ephemeral"

echo "deploying postgresql"
oc new-app -e POSTGRESQL_USER=test -e POSTGRESQL_PASSWORD=postgres -e POSTGRESQL_DATABASE=larademo -e POSTGRESQL_ADMIN_PASSWORD=postgres --template="openshift/postgresql-persistent"
