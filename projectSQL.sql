drop database onlineshop;
create database if not exists onlineshop;
use onlineshop;

CREATE  TABLE users (
	username VARCHAR(45) NOT NULL ,
	password VARCHAR(45) NOT NULL ,
	enabled TINYINT NOT NULL DEFAULT 1 ,
	PRIMARY KEY (username),
    idCustomer int
);

CREATE TABLE user_roles (
	user_role_id int(11) NOT NULL AUTO_INCREMENT,
	username varchar(45) NOT NULL,
	role varchar(45) NOT NULL,
	PRIMARY KEY (user_role_id),
	UNIQUE KEY uni_username_role (role,username),
	KEY fk_username_idx (username),
	CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username)
);
    
create table customer(
	id int not null auto_increment,
    address varchar(40),
    phone varchar(12),
    email varchar(40),
    primary key(id),
    idAccount int,
    name varchar(40)
);

create table account(
	id int not null auto_increment,
    billingAddress varchar(40),
    primary key(id),
    idOrder int,
    idPayment int
);

create table cart(
	id int not null auto_increment,
	created date,
    idItem int,
    idAccount int,
    primary key(id)
);

create table orders(
	id int not null auto_increment,
    ordered date,
    shipped date,
    address varchar(40),
    total float,
    primary key(id),
    idItem int
);

create table payment(
	id int not null auto_increment,
    paid date,
    total float,
    details varchar(40),
    primary key(id),
	idOrder int
);

create table item(
	id int not null auto_increment,
    name varchar(40),
    quantity int,
    price float,
    description varchar(40),
    category varchar(40),
    picture varchar(40),
    primary key(id)
);

alter table customer
add constraint fk_idAccount1 foreign key (idAccount) references account(id);

alter table account
add constraint fk_idOrder1 foreign key (idOrder) references orders(id),
add constraint fk_idPayment foreign key (idPayment) references payment(id);

alter table cart
add constraint fk_idItem1 foreign key (idItem) references item(id),
add constraint fk_idAccount2 foreign key (idAccount) references account(id);

alter table orders
add constraint fk_idItem2 foreign key (idItem) references item(id);

alter table payment
add constraint fk_idOrder2 foreign key (idOrder) references orders(id);

alter table users
add constraint fk_idCustomer foreign key(idCustomer) references customer(id);

insert into item
(name, quantity, price, description, category, picture)
values
("placa video 1",2,25.0,"gtx","videocards","picture1.jpg"),
("placa video 2",5,75.0,"gtr","videocards","picture2.jpg"),
("placa video 3",10,100.0,"ati","videocards","picture3.jpg"),
("processor 1",10,100,"intel","processors","proc1.jpg"),
("processor 2",10,100,"amd","processors","proc2.jpg"),
("RAM 1",10,100,"corsair","memorymodules","ram1.jpg"),
("RAM 2",12,125,"corsair","memorymodules","ram2.jpg"),
("motherboard 1",12,125,"asus","motherboards","m1.jpg"),
("motherboard 2",5,75,"asus","motherboards","m2.jpg");