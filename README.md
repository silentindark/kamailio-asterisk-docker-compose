# kamailio-asterisk with docker-compose

*This is based off of some of Nick vs Networking Posts on Kamailio, please check them out*

## Description:
This is meant to be an easy way to spin up docker compose with kamailio and asterisk. I wanted an enviroment to easily try things with kamailio, there is no db but you could easily add one. The dispatcher uses a list if you would like to add more asterisk servers and the current dispatcher is activated by defining DISPATCH

## To use:
**clone project**

**docker-compose up --force-recreate --build --scale asterisk=3**

You can edit the kamailio.cfg and rerun this as many times as you like.
