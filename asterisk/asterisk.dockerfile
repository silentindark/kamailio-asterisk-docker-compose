FROM andrius/asterisk

#Copy the config file onto the Filesystem of the Docker instance
ADD pjsip.conf /etc/asterisk/
ADD extensions.conf /etc/asterisk/
ADD extconfig.conf /etc/asterisk/
ADD res_odbc.conf /etc/asterisk/
ADD odbcinst.ini /etc/
ADD odbc.ini /etc/

#Expose port 5061 (SIP) for TCP and UDP
EXPOSE 5061/udp