FROM kamailio/kamailio:5.4.6-stretch

#Copy the config file onto the Filesystem of the Docker instance
ADD etc/kamailio.cfg /etc/kamailio/
ADD etc/kamctlrc /etc/kamailio/
ADD etc/dispatcher.list /etc/kamailio/

RUN apt update && \
apt install sngrep

#IF using maria db
#RUN apt install kamailio kamailio-mysql-modules -y

#IF Postgres
RUN apt install kamailio-postgres-modules -y

#Expose port 5060 (SIP) for TCP and UDP
EXPOSE 5060
EXPOSE 5060/udp