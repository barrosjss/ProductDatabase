-- Suppliers table.

create table suppliers(
pk_id int(11) not null auto_increment,
name_suppliers varchar(25),
telephone int(11),
primary key (pk_id)
)engine=innodb;

insert into suppliers(name,telephone) values ('-',0);


-- Product Category Table.

create table category(
pk_id int(11) not null auto_increment,
name_category varchar(25),
primary key (pk_id)
)engine=innodb;

insert into category(name) values ('-');


-- Product table.

create table product(
pk_id int(11) not null auto_increment,
name_product varchar(25),
price int(7),
fk_category int(11),
fk_suppliers int(11),
primary key (pk_id),
foreign key (fk_category) references category (pk_id),
foreign key (fk_suppliers) references suppliers (pk_id)
)engine=innodb;

insert into product(name,price,fk_category,fk_suppliers) values ('-',0,0,0);


-- Show tables.

select * from suppliers;
select * from category;
select * from product;

select product.name_product,product.price,category.name_category,suppliers.name_suppliers from product 
join category on product.fk_category = product.pk_id join suppliers on product.fk_suppliers = suppliers.pk_id;