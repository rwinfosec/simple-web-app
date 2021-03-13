DROP DATABASE IF EXISTS injection;

CREATE DATABASE injection;

\c injection;

CREATE TABLE users(
                     id SERIAL PRIMARY KEY,
                     username varchar(50),
                     password varchar(50)
);

INSERT INTO users(username, password) VALUES ('administrator', 'spring2021')