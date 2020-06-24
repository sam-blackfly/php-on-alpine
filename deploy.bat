echo "deploying redis"
oc new-app -e REDIS_PASSWORD=test --template="openshift/redis-ephemeral"

echo "deploying postgresql"
oc new-app -e POSTGRESQL_USER=test -e POSTGRESQL_PASSWORD=postgres -e POSTGRESQL_DATABASE=larademo -e POSTGRESQL_ADMIN_PASSWORD=postgres --template="openshift/postgresql-persistent"
