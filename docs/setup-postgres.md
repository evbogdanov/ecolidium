# How to setup Postgres in Docker

Run Postgres as a container:

```
docker run -d --name ecolidium-postgres -p 5432:5432 -e POSTGRES_PASSWORD=123 postgres:12
```

Connect via `psql` from the container:

```
docker exec -it ecolidium-postgres psql -U postgres
```

Connect via local `psql`

```
PGPASSWORD=123 psql -h localhost -p 5432 -U postgres
```
