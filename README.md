
TaiCoL MariaDB docker
========================

# Requirement

- install docker desktop
- mysqldump source database and gzip to xxx.sql.gz

# Run Docker
1. put xxx.sql.gz in /[project-path]/mariadb
2. build docker image

```console
docker-compose build
```

3. run docker

```console
docker-compose up
```

maybe wait 10 minutes for database initialization. 

4.  open browser: http://127.0.0.1:8080, use adminer client to view or edit database 


# Update db

1. delete folder: /[project-path]/data
2. change xxx.sql.gz to yyy.sql.gz
3. run docker build and up again

# Scripts

## dump taiwan species

```console
docker-compose exec db bash
./dump-taiwan-species-csv.sh
```
