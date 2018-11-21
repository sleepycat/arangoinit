# Arangoinit

This is an
[initContainer](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)
for Kubernetes. It solves the problem of ensuring the database is in the state
the application is expecting.

It's basically packaging up [Arangomigo](https://github.com/deusdat/arangomigo)
so it gets run before your application pod starts.

The following command assumes that your migrations use the same database name
and that a service called `arangodb` exists (which is what creates the A record
in kubedns that makes the DB_URL work).

```sh
docker run --network=host -e DB_USER=foo -e DB_PASSWORD=bar \
 -e DB_NAME=cybercrime -e DB_URL="http://arangodb:8529" \
-v `pwd`/migrations:/migrations cdssnc/cybercrime-arangoinit
```
