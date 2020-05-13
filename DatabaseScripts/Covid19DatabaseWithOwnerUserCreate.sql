DROP DATABASE IF EXISTS covid19;
DROP USER IF EXISTS covid19_user;
CREATE USER covid19_user WITH PASSWORD 'user2313';

CREATE DATABASE covid19
    WITH
    OWNER = covid19_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'pl_PL.utf8' --alternatively 'pl_PL' or 'pl_PL.utf8' if on Linux
    LC_CTYPE = 'pl_PL.utf8' --alternatively 'pl_PL' or 'pl_PL.utf8' if on Linux
    TEMPLATE = template0
    CONNECTION LIMIT = 5000;