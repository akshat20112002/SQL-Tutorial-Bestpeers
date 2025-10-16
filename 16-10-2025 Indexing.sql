create table customers (
id int not null,
name varchar(20) not null,
age int not null,
address char(25), 
salary decimal(18, 2), 
index(id)
);

create index name_index on customers (Name);
desc customers;

alter table customers add index age_index(age);

create unique index unique_index on customers(name);

create index composite_index on customers(ID, name);

desc customers;

drop index name_index on customers;

desc customers;

alter table customers drop primary key;
show index from customers;

show index from customers;

create index age_index on customers(age);

