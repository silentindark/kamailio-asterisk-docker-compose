SELECT 'CREATE DATABASE kamailio'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'kamailio');