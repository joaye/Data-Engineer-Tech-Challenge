FROM postgres:latest

ENV POSTGRES_PASSWORD admin
ENV POSTGRES_DB postgresdb

# copy the sql files in the current folder to the container
COPY *.sql /docker-entrypoint-initdb.d/