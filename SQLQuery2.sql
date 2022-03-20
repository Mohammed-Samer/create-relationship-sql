create table empolyee (
IDempolyee int primary key identity ,
empolyee varchar(10),
age int ,
IDcity int not null ,
constraint em foreign key (IDcity) references city(IDcity) )
 
create table city (
IDcity int primary key identity ,
city varchar(10) not null,
size numeric(5,2))

create table product (
IDproduct int primary key identity ,
product varchar(10) not null,
IDempolyee int not null ,
constraint pr foreign key (IDempolyee) references empolyee(IDempolyee))

create table store (
IDstore int primary key identity ,
storename varchar(10) unique not null )

alter table store add IDcity int foreign key references city(IDcity)
alter table empolyee add constraint ag check (age > 15 )
alter table empolyee alter column empolyee varchar(10) not null 
