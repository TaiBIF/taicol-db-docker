FROM mariadb:10.3

# import data
COPY *.gz /docker-entrypoint-initdb.d/

WORKDIR /taicol-code/
COPY scripts/* ./
