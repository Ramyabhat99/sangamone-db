Create schema questionbin;
use questionbin;
Create table icicisignup
(
Userid bigint auto_increment primary key not null,
Username nvarchar(100) not null, 
Password nvarchar(100)not null,
Email nvarchar(100)not null,
Name nvarchar(100)not null,
Empno nvarchar(100) not null,
Usertype nvarchar(50) default 'User'
);

desc icicisignup;
Drop table icicisignup;

create table loginicici
(
Userid bigint auto_increment primary key not null,
Username nvarchar(100) not null, 
Password nvarchar(100)not null,
Usertype nvarchar(50) default 'User'
);

show tables;
Drop table loginicici;

create table registration
(
Userid bigint auto_increment primary key not null,
Empname nvarchar(100) not null, 
Email nvarchar(100)not null,
Empno nvarchar(100) not null,
Usertype nvarchar(50)
);

desc  registration;

create table Usertype
(
usertype_id bigint auto_increment primary key not null,
usertype nvarchar(100) not null
);

desc Usertype;

create table login
(
loginid bigint auto_increment primary key not null,
Empname nvarchar(100)not null,
Empno nvarchar(100)not null,
FOREIGN KEY (Empname) REFERENCES registration(Empname),
FOREIGN KEY (Empno) REFERENCES registration(Empno)
);







