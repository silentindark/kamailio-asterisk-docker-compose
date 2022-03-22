FROM mariadb:10.5

#Copy the config file onto the Filesystem of the Docker instance
COPY 00-create_db.sql /etc/maridadb-scripts/
COPY 10-create_tables.sql /etc/maridadb-scripts/
COPY 90-create_user.sql /etc/maridadb-scripts/
COPY my.cnf /etc/mysql/


#Expose port 3306 (mysql) for TCP
EXPOSE 3306