
create database ElectricityBillDatabase;
use ElectricityBillDatabase;
create table ElectricityBill
(
consumer_number varchar(20) not null,
consumer_name varchar(50) not null,
units_consumed int not null,
bill_amount float not null,
created_date datetime default getdate(),
bill_date datetime not null,
bill_month int not null,
bill_year int not null

);
