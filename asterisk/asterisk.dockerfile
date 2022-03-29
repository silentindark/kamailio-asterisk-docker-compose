FROM andrius/asterisk

#Copy the config file onto the Filesystem of the Docker instance
ADD etc/pjsip.conf /etc/asterisk/
ADD etc/extensions.conf /etc/asterisk/
#ADD etc/extconfig.conf /etc/asterisk/
#ADD etc/res_odbc.conf /etc/asterisk/
#ADD etc/sorcery.conf /etc/asterisk/
ADD etc/odbcinst.ini /etc/
ADD etc/odbc.ini /etc/

#Install sngrep on asterisk
RUN apk add sngrep && apk add psqlodbc

#Expose port 5061 (SIP) for TCP and UDP
EXPOSE 5061/udp
EXPOSE 10000-20000/udp