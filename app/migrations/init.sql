create database shareposts;

CREATE TABLE users
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(255),
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    created_at datetime DEFAULT NOW()
);
CREATE UNIQUE INDEX users_email_uindex ON users (email);

CREATE TABLE posts
(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id int,
    title varchar(255),
    body text,
    created_at datetime DEFAULT NOW()
);