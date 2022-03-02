create database Samay;
use Samay;
create table Countries(country_id bigint auto_increment primary key , country_name varchar(50), country_code varchar(50), currency_code varchar(50), continent_name varchar(50));
desc Countries;
create table TimeZone(timezone_id bigint auto_increment primary key, country_id bigint ,foreign key(country_id) references Countries(country_id)ON DELETE SET NULL,timezone_offset float);				   
desc TimeZone;
create table customer(cust_id bigint auto_increment primary key, cust_name Varchar(50), products_purchased varchar(100));

create table Events(event_id bigint auto_increment primary key, cust_id bigint ,foreign key(cust_id) references customer(cust_id)ON DELETE SET NULL,event_type varchar(50)); 
create table Employee(emp_id bigint auto_increment primary key, branch_name varchar(50), location varchar(50));

insert into Countries(country_name,country_code,currency_code,continent_name)values("India",356,"INR","Asia");
select *from Countries;
insert into Countries(country_name,country_code,currency_code,continent_name)values("Canada",124,"CAD","Africa");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Afghanistan",004,"AFN","Asia");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Albania",008,"ALL","Europe");
insert into Countries(country_name,country_code,currency_code,continent_name)values("Brazil",076,"BRL","SouthAmerica");

insert into TimeZone(country_id,timezone_offset)values(1,+05.30);

select * from TimeZone;
delete from Timezone where timezone_id=2 ;

insert into TimeZone(country_id,timezone_offset)values(2,+04.30);
insert into TimeZone(country_id,timezone_offset)values(3,+01.00);
insert into TimeZone(country_id,timezone_offset)values(4,-05.00);
insert into TimeZone(country_id,timezone_offset)values(5,-04.00);

insert into customer(cust_name,products_purchased)values('Walmart','WaterPurifier');
insert into customer(cust_name,products_purchased)values('Amazon','book');
insert into customer(cust_name,products_purchased)values('Apple','IPad');
insert into customer(cust_name,products_purchased)values('UnitedHealthGroup','ParentalInsurance');
insert into customer(cust_name,products_purchased)values('CVSHealth','Covaccine');

Select *from customer;
Drop table customer;
insert into Events(cust_id,event_type)values(1,'ChristmasParty');
insert into Events(cust_id,event_type)values(2,'NewYearParty');
insert into Events(cust_id,event_type)values(3,'BusinessMeeting');
insert into Events(cust_id,event_type)values(4,'OffsitePlanningMeetings');
insert into Events(cust_id,event_type)values(5,'BirthdayParty');

Select *from Events;
drop table Events;
insert into Employee(branch_name,location)values('FirstData','Chicago');
insert into Employee(branch_name,location)values('Magneto','Pune');
insert into Employee(branch_name,location)values('SLK','Germany');
insert into Employee(branch_name,location)values('Sankey','Canada');
insert into Employee(branch_name,location)values('TCS','Singapore');

select * from Employee;
select * from Countries;
select * from Timezone;
Drop table Countries;
drop table TimeZone;
Select Countries.country_id,Countries.country_name,Countries.country_code,Timezone.timezone_offset
from Countries INNER JOIN Timezone ON Countries.country_id=Timezone.country_id;
Select * from customer;
select * from Events;

