CREATE SEQUENCE global_seq AS INTEGER START WITH 100000;

create table USERS
(
    id   integer not null,
    email varchar(255) not null,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    password varchar(255) not null,
    primary key(id)
);

create table USER_ROLE
(
    role varchar(255) not null,
    user_id integer not null
);

INSERT INTO USERS (ID, EMAIL, FIRST_NAME, LAST_NAME, PASSWORD)
VALUES (1, 'user@gmail.com', 'User_First', 'User_Last', 'password'),
       (2, 'admin@javaops.ru', 'Admin_First', 'Admin_Last', 'admin');

INSERT INTO USER_ROLE (ROLE, USER_ID)
VALUES ('ROLE_USER', 1),
       ('ROLE_ADMIN', 2),
       ('ROLE_USER', 2);