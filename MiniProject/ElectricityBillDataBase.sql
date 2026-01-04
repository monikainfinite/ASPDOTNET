create database ElectricityBillDatabase;
use ElectricityBillDatabase;
create table ELectricityBill
(
consumer_number varchar(20) not null,
consumer_name varchar(50) not null,
units_consumed int not null,
bill_amount float not null,
bill_date datetime default getdate()
);
