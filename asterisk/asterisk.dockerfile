FROM andrius/asterisk

#Copy the config file onto the Filesystem of the Docker instance
COPY pjsip.conf /etc/asterisk/pjsip.conf

#Expose port 5060 (SIP) for TCP and UDP
EXPOSE 5060/udp