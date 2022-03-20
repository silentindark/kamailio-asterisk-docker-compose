FROM kamailio/kamailio:5.4.6-stretch

#Copy the config file onto the Filesystem of the Docker instance
COPY kamailio.cfg /etc/kamailio/
COPY dispatcher.list /etc/kamailio/

#Print out the current IP Address info
RUN ip add
RUN apt update
RUN apt install sngrep

#Expose port 5060 (SIP) for TCP and UDP
EXPOSE 5060
EXPOSE 5060/udp