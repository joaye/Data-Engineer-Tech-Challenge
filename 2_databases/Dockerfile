FROM postgres:latest

ENV POSTGRES_PASSWORD admin
ENV POSTGRES_DB postgresdb

# copy the sql files in the queries folder to the container
COPY queries/*.sql /docker-entrypoint-initdb.d/