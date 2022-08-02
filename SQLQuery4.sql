create table customer
(custid int primary key
,cname varchar(20),
city varchar(10),
mobile bigint);


create table orderdetails
(Oid int primary key,
orderitem varchar(20),
custid int,
constraint fkcid foreign key(custid) references customer(custid) on delete set null on update cascade);

insert customer values(101,'jyoti','pune',9096172414),(102,'sarvesh','pune',8793382433);
insert orderdetails values(501,'pizza',101),(502,'burger',102);

create table item
(itemid int primary key,
itemname varchar(25),
price int);

create table orderItemDetails
(Oid int ,
itemid int,
qty int,
primary key(Oid,itemid),
foreign key(Oid) references orderdetails(Oid),
foreign key(itemid) references item(itemid),

