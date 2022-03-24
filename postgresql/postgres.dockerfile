FROM postgres:12

#Copy the config file onto the Filesystem of the Docker instance
ADD 01-create_db.sql /docker-entrypoint-initdb.d
ADD 02-create_user.sql /docker-entrypoint-initdb.d
ADD 21-kamailio_pg.sql /docker-entrypoint-initdb.d
ADD 30-asterisk_tables.sql /docker-entrypoint-initdb.d
ADD 40-create_asterisk_ext.sql /docker-entrypoint-initdb.d

#Expose port 5432 (postgres) for TCP
EXPOSE 5432