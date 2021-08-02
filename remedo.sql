create database remedoDb;
use remedoDb

create table users(
user_id int NOT NULL,
name varchar(100),
address varchar(500),
PRIMARY KEY (user_id)
)

create table transactions(
user_id int,
total_invoice_amount int,
invoice_amount_paid int,
remedo_commission int ,
FOREIGN KEY (user_id) REFERENCES users(user_id)
)

create table user_extra_info(
user_id int,
whatsapp_disabled bit,
FOREIGN KEY (user_id) REFERENCES users(user_id)
)



INSERT INTO users (user_id, name, address)
VALUES (1, 'amit','sdfdsf');
INSERT INTO users (user_id, name, address)
VALUES (2, 'shikha','sdfdsf');
INSERT INTO users (user_id, name, address)
VALUES (3, 'sonu','sdfdsf');
INSERT INTO users (user_id, name, address)
VALUES (4, 'rohit','sdfdsf');

select * from users

INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (1,200,150,50);
INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (1,300,150,54);
INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (1,500,350,150);
INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (2,200,150,50);
INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (3,300,150,54);
INSERT INTO transactions (user_id, total_invoice_amount, invoice_amount_paid,remedo_commission)
VALUES (4,500,350,150);

query 1

select a.user_id, a.address,b.total_invoice_amount, b.invoice_amount_paid, b.remedo_commission 
from users as a INNER JOIN
transactions as b ON a.user_id = b.user_id 
where a.user_id = 1

query 2

select sum(b.remedo_commission)
from users as a INNER JOIN
transactions as b ON a.user_id = b.user_id 
where a.user_id = 1

query 3
select user_id from users where user_id not in(select user_id from user_extra_info)


query 4
select user_id from user_extra_info

query 5
select user_id from transactions where user_id not in(select user_id from user_extra_info)

