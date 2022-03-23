FROM postgres:12

#Copy the config file onto the Filesystem of the Docker instance
ADD create_db.sql /docker-entrypoint-initdb.d
ADD kamailio_pg.sql /docker-entrypoint-initdb.d
ADD create_user.sql /docker-entrypoint-initdb.d

#Expose port 5432 (postgres) for TCP
EXPOSE 5432