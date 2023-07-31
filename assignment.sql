create table "Assignment".user_details
("id" uuid not null default uuid_generate_v4(),
"name" character varying not null,
"address" character varying not null,
"phone_number" character varying not null,
"email" character varying not null,
"password" character varying not null,
constraint "PK_userid" primary key("id"));

create table "Assignment".product_details
("id" uuid not null default uuid_generate_v4(),
"name" character varying not null,
"price" float not null,
"sku" character varying not null,
"description" character varying,
"password" character varying not null,
constraint "PK_productid" primary key("id"));

create table "Assignment".product_category
("id" uuid not null default uuid_generate_v4(),
"category" character varying not null,
constraint "PK_categoryid" primary key("id"));

create table "Assignment".product_category_junction
("product_id" uuid not null default uuid_generate_v4(),
"category_id" character varying not null);

create table "Assignment".product_category_junction
("product_id" uuid not null default uuid_generate_v4(),
"category_id" character varying not null);

drop table "Assignment".product_category_junction;
create table "Assignment".product_category_junction
("product_id" uuid not null,
"category_id" character varying not null);

create table "Assignment".order_details
("order_id" uuid not null default uuid_generate_v4(),
"user_id" uuid not null,
"add_id" uuid not null,
"price" float,
constraint "PK_orderid" primary key("order_id"));

create table "Assignment".order_products
("order_id" uuid not null,
"quantity" int,
"product_id" uuid not null
);

create table "Assignment".order_address(
"id" uuid not null default uuid_generate_v4(),
"house_name" character varying,
"city"  character varying,
"country" character varying,
"pincode" character varying,
constraint "PK_addressidpkconstraint" primary key ("id"));

INSERT INTO "Assignment".user_details
(id, "name", address, phone_number, email, "password")
VALUES(uuid_generate_v4(), 'Devi', 'abc', '991749', 'hfdjhfjf', 'password'),
(uuid_generate_v4(), 'Linette', 'abc', '991749', 'hfdjhfjf', '038703'),
(uuid_generate_v4(), 'Mariya', 'abc', '991749', 'hfdjhfjf', 'martho');

INSERT INTO "Assignment".product_details
(id, "name", price, sku, description, "password")
VALUES(uuid_generate_v4(), 'Dove Soap', 50, '45', 'body soap', 'password'),
(uuid_generate_v4(), 'Camlin pencil', 12, '100', 'pencil', 'password'),
(uuid_generate_v4(), 'Apsara pencil', 12, '45', 'pencil', 'password'),
(uuid_generate_v4(), 'Rexona Soap', 50, '45', 'body soap', 'password'),
(uuid_generate_v4(), 'Parker pen', 50, '45', 'pen', 'password');

alter table "Assignment".user_details rename to user_detail;
alter table "Assignment".product_details rename to product_detail;
alter table "Assignment".order_details rename to order_detail;
alter table "Assignment".order_products rename to order_product;

select * from "Assignment".user_detail;
select * from "Assignment".product_detail;

INSERT INTO "Assignment".product_category
(id, category)
VALUES(uuid_generate_v4(), 'Soap'),
(uuid_generate_v4(), 'Pencil'),
(uuid_generate_v4(), 'Pen');

SELECT * FROM "Assignment".user_detail;
select * from "Assignment".product_detail;
select * from "Assignment".product_category;

insert into "Assignment".product_category_junction 
(product_id,category_id)
values('65d71fbb-5a1c-4835-8447-76bcf6e44bc9','0a09c3a3-ee7a-413a-9599-5ff2707476d5'),
('45329ef6-16b4-4213-8124-2940dffec695','0a09c3a3-ee7a-413a-9599-5ff2707476d5'),
('703a904a-a20f-4749-ac93-d93f90230d8a','4e43fb56-ad9e-42a4-baf7-7a72482791fb'),
('3cf3e309-519a-4069-b7d6-f074ea914225','4e43fb56-ad9e-42a4-baf7-7a72482791fb'),
('f2ae3417-89b7-43b5-9398-95d8cfcf0ae3','66581036-c80c-4a07-a01a-96e30e2353fd');

select * from "Assignment".user_detail;
INSERT INTO "Assignment".order_address
(id, house_name, city, country, pincode)
VALUES(uuid_generate_v4(), 'Mallissery', 'Thrissur', 'India', '680101'),
(uuid_generate_v4(), 'ellissery', 'Kannur', 'India', '60101'),
(uuid_generate_v4(), 'Pulissery', 'Pala', 'India', '68101');

select * from "Assignment".order_address;



INSERT INTO "Assignment".order_detail
(order_id, user_id, add_id, price)
VALUES(uuid_generate_v4(),'fb214929-5086-481d-9d24-7ee1d9c6fc2e' , '6bc09735-82ba-4c5d-8b8a-a49e6cbe924c', 0),
(uuid_generate_v4(),'fb214929-5086-481d-9d24-7ee1d9c6fc2e','6bc09735-82ba-4c5d-8b8a-a49e6cbe924c',0),
(uuid_generate_v4(),'fb214929-5086-481d-9d24-7ee1d9c6fc2e','6bc09735-82ba-4c5d-8b8a-a49e6cbe924c',0),
(uuid_generate_v4(),'9658fbd1-4d13-46bf-926a-4e5ee7324c01','22a6a364-66ef-4238-a7b9-78d112c43106',0),
(uuid_generate_v4(),'8f830906-2af3-4bbb-8ef1-54b3162ebc92','c6d96856-bf59-42a8-91da-9405376d2d18',0);

select * from "Assignment".order_detail;
select * from "Assignment".product_detail;

INSERT INTO "Assignment".order_product
(order_id, quantity, product_id)
VALUES('e55811d3-6e42-49c4-96d7-de819c1eb589', 6,'65d71fbb-5a1c-4835-8447-76bcf6e44bc9'),
('e55811d3-6e42-49c4-96d7-de819c1eb589',4,'703a904a-a20f-4749-ac93-d93f90230d8a'),
('4bc2f3db-8be1-4735-83a2-3186bde68f3d',5,'3cf3e309-519a-4069-b7d6-f074ea914225'),
('11b03f8a-a20f-4c2c-8f62-d0c6b64ddb92',7,'45329ef6-16b4-4213-8124-2940dffec695'),
('75fe4bfe-a625-42ba-9d1c-e3a2786b104c',9,'45329ef6-16b4-4213-8124-2940dffec695'),
('d8dacfa4-640d-46ad-8c5f-288d24ef940f',5,'f2ae3417-89b7-43b5-9398-95d8cfcf0ae3');

create index name1 on "Assignment".product_category("category");

create index name2 on "Assignment".product_detail("name");

select * from "Assignment".product_detail pd left join "Assignment".product_category_junction pcj on pd.id = pcj.product_id; 












