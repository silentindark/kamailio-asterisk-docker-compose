create user kamailio with encrypted password 'kamailiorw';
create user kamailioro with encrypted password 'kamailioro';
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO kamailioro;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO kamailio;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT USAGE, SELECT ON SEQUENCES TO kamailio;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO kamailio;

