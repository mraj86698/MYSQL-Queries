create database addressBook;
show databases;
use addressBook;
show tables;
drop table addressBook;
create table addressBook(id int primary key,firstname varchar(20),lastname varchar(20),address varchar(100),city varchar(50),state varchar(50),zip int,phone_number long,email varchar(80));
desc addressBook;
insert into addressBook value (1,'Mohan', 'Raj', 'satharai', 'Thiruvallur', 'TamilNadu', 631203, 6374930453, 'mraj86698@gmail.com');
insert into addressBook value (2,'Mani', 'kandan', 'Kondancheri', 'Chennai', 'Kerala', 631402, 7402181954, 'manikandan@gmail.com');
insert into addressBook value (3,'Gopala', 'Krishnan', 'Kadambathur', 'Kncheepuram,', 'Bengaluru', 631512, 9786124580, 'Gopala543645@gmail.com');
insert into addressBook value (4,'Aakash', 'Varma', 'thiruvallur', 'Thriruvallur', 'Andhra', 984568, 9789621475, 'akash1324@gmail.com');


select * from addressBook;
update addressBook set city="Thiruvallur" where firstname = 'Aakash'; 
delete from addressBook where ID = '2';
select * from addressBook where state ="TamilNadu" or city= "Thiruvallur";
select count(state) from addressBook where city = "Thiruvallur";
select * from addressBook order by firstname asc;
select * from addressBook order by city asc;
alter table addressbook add type varchar(50) after lastName;

insert into addressbook value ('8','abhishek','rajawat','family','kamlaNagar', 'gwalior','madhyaPradesh',474006,9971944613,'abhishekrajawat101@gmail.com');
insert into addressbook value ('7','sohail','Tanvir','family','Perambakkam', 'Thiruppur','NewDelhi',474236,9971944613,'abhishekraj@gmail.com');
SELECT count(*) AS TOTALNUMBEROFTABLES FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'AddressBookService';