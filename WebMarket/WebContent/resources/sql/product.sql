create table member (
id varchar(10) not null,
password varchar(10) not null,
name varchar(10) not null,
phone varchar(20) not null,
primary key(id)
) default CHARSET=utf8;