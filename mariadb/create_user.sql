CREATE USER IF NOT EXISTS 'kamailio'@'%' IDENTIFIED BY 'kamailiorw';
CREATE USER IF NOT EXISTS 'kamailioro'@'%' IDENTIFIED BY 'kamailioro';
GRANT ALL ON kamailio.* TO 'kamailio'@'%';
GRANT ALL ON kamailio.* TO 'kamailioro'@'%';
FLUSH PRIVILEGES;