create table users (
id serial primary key,
name varchar (255) not null,
email varchar (255) not null unique,
password varchar (255) not null,
es_admin boolean default false
);

create table questions (
id serial primary key not null,
question varchar (255) not null,
answer varchar (255) not null,
fake_one varchar (255) not null,
fake_two varchar (255) not null
);

create table puntajes (
id serial primary key not null,
id_user integer references users(id),
date date default now(),
score integer not null
);

