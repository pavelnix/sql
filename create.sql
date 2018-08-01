drop database itemUser;

create database itemUser;

create table role(
	id serial primary key,
	name varchar(2000)
);

create table rules(
	id serial primary key,
	name varchar(2000)
);

create table state(
	id serial primary key,
	name varchar(2000)
);

create table category(
	id serial primary key,
	name varchar(2000)
);

create table users(
	id serial primary key,
	name varchar(2000),
	role_id int references role(id)
);

create table role_rules(
	id serial primary key,
	role_id int references role(id),
	rules_id int references rules(id)
);

create table item(
	id serial primary key,
	name varchar(2000),
	category_id int references category(id),
	state_id int references state(id)
);

create table attachments(
	id serial primary key,
	name varchar(2000),
	item_id int references item(id)
);

create table comments(
	id serial primary key,
	name varchar(2000),
	item_id int references item(id)
);

insert into role (name) values ('rolename1');
insert into role (name) values ('rolename2');

insert into rules (name) values ('rulesname1');
insert into rules (name) values ('rulesname2');

insert into state (name) values ('statename1');
insert into state (name) values ('statename2');

insert into category (name) values ('categoryname1');
insert into category (name) values ('categoryname2');

insert into users (name,role_id) values ('usersname1',1);
insert into users (name,role_id) values ('usersname2',2);

insert into role_rules (role_id,rules_id) values (1,1);
insert into role_rules (role_id,rules_id) values (2,2);

insert into item (name,category_id,state_id) values ('itemname1',1,1);
insert into item (name,category_id,state_id) values ('itemname2',2,2);

insert into attachments (name,item_id) values ('attachmentsname1',1);
insert into attachments (name,item_id) values ('attachmentsname2',2);

insert into comments (name,item_id) values ('commentsname1',1);
insert into comments (name,item_id) values ('commentsname2',2);