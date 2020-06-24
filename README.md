# Larademo

### Deployment

Deploying PostgreSQL

```bash
$ oc new-app -e POSTGRESQL_USER=larademo -e POSTGRESQL_PASSWORD=postgres -e POSTGRESQL_DATABASE=larademo -e POSTGRESQL_ADMIN_PASSWORD=postgres --template="openshift/postgresql-persistent"
```
