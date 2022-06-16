
create database Clothing


use Clothing

go

create table UserDetails
(
UserId varchar(20) not null primary key,
UserName varchar(80),
Phone bigint not null,
DeliveryAddress varchar(500),
Password varchar(15)
)






select * from UserDetails



create table ClothingDetail
(
ClothCode int not null primary key identity(1101,1),
ClothName varchar(50),
Description varchar(200),
PurchaseAmount int,
OfferAmount int,
OfferDuration varchar(20)
)



insert into ClothingDetail values('jean','makes you look stylish','500','200','two days')
insert into ClothingDetail values('shirt','makes you look classy','600','300','three days')
insert into ClothingDetail values('tshirt','comfortable to wear','700','400','four days')
insert into ClothingDetail values ('shorts', 'comfortable to wear','800','500','five days')
insert into ClothingDetail values('hoodie','party wear','900','600','six days')





select * from ClothingDetail



create table Cart
(
CartId int not null primary key identity(7301,1),
UserId varchar(20) foreign key references UserDetails(UserId),
ClothCode int foreign key references ClothingDetail(ClothCode),
ClothName varchar(50),
Description varchar(200),
PurchaseAmount int,
OfferDuration varchar(20),
quantity int,
)




select * from Cart




create table BillingDetails
(
id int identity(1,1) primary key,
BillNo int not null,
ClothCode int foreign key references ClothingDetail(ClothCode),
UserId varchar(20) foreign key references UserDetails(UserId),
OfferStartDate date,
BillingAmount int,
Quantity int,
)

drop table BillingDetails
truncate table BillingDetails

select * from BillingDetails

select * from BillingDetails

