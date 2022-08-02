create database Doctor;


create table Doctor(Did int primary key,Dname varchar(20),Daddress varchar(20),Dqualification varchar(20),noofpatient_handled int );
select * from Doctor;


create table patientMaster
(Pcode int primary key,Pname varchar(20),Padd varchar(20),Page int,Pgender varchar(10),Pbloodgroup varchar(5),Did int constraint fkid foreign key (Did) references Doctor(Did));


create table AdmittedPatient
(Pcode int constraint fkid1 foreign key (Pcode) references patientMaster(Pcode) ,
Entry_date varchar(5),discharge_date int, wardno varchar(5),disease varchar(10),Did int);

create table Bill
(Billno int primary key,Pcode int constraint fkid1 foreign key (Pcode) references patientMaster(Pcode),bill_amount int);


insert Doctor values(1,'sarvesh','pune','MBBS',5),
                     (2,'Niraj','pune','MBBS',2),
                      (3,'Dinesh','pune','MBBS',4);

insert patientMaster values(101, 'jyoti','pune','female',30,'o-ve',1),
                           (102, 'Rani','pune','female',31,'B-ve',2),
						   (103, 'Meena','pune','female',35,'A-ve',3);

insert AdmittedPatient values(102,'27_07-2022','30_07_2022','A1','corona',3),
                              (103,'25_07-2022','28_07_2022','B1','Typhoid',2),
							  (101,'21-07-2022','23_07_2022','C1','dengue',1);

insert Bill values(1125,102,5000),
                   (1126,101,500),
				   (1127,103,6000);

update  AdmittedPatient wardno int to wardno