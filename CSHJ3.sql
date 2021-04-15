create database CollegeServicess;

use CollegeServicess;

CREATE table UserStudent(
ID varchar(20),
 StudentNameF varchar(45),
 Major varchar(45),
 levelst varchar(45), 
 Email varchar(70), 
 Gender char(1), 
 GPA decimal(50), 
 Get_civil varchar(20), 
 StClubName varchar(45),
 USERname varchar(45),
primary key(ID));


CREATE table UserEmp(
empID varchar(20),
 StudentNameEMP varchar(45),
  Email varchar(70), 
 Gender char(1), 
 USERnameEmp varchar(45),
primary key(empID));

create table emp_phone (
phoneEmp varchar(20),
emp_id varchar(20),
primary key(emp_id, phoneEmp));

create table std_phone (
phoneStd varchar(20),
std_id varchar(20),
primary key(std_id, phoneStd));

create table Edit_bookSystem(
bookNo int(20),
empId varchar(20),
shelfNo int(20),
primary key (empId, bookNo));




CREATE table IDcard(
Civil_record varchar(20),
 StudentNameID varchar(45),

 Nationality varchar(45),
BDate date,
 Expiredate date ,Bloodtype varchar(46),
 primary key(Civil_record));


create table Book(
BorrowerName varchar(45),
BookNum int(20),
BookTitle varchar(45),
yearr year,
stId varchar(20),
BorrowDate date,
ReturnDate date,
primary key(BookNum)
);

create table Locker(
StudentName varchar(30),
stdID varchar(20),
LockerNum int(10),
wing char(1),
Period int(10),
primary key(LockerNum)
);




CREATE table Club(
ClubName varchar(35),
 STName varchar(35),
 Email varchar(35),
ClubType varchar(35),
stTalent varchar(35),
 primary key(ClubName));
 
alter table UserEmp add Constraint Gender check (Gender IN ('M', 'F')); 
alter table std_phone add foreign key(std_id) references UserStudent (ID);
alter table emp_phone add foreign key(emp_id) references UserEmp (empID);
alter table Edit_bookSystem add foreign key(bookNo) references Book (BookNum);
alter table Edit_bookSystem add foreign key(empId) references UserEmp (empID);
alter table UserStudent add foreign key(Get_civil) references IDcard (Civil_record);
alter table UserStudent add foreign key(StClubName) references Club (ClubName);
alter table Locker add foreign key (stdID) references UserStudent (ID);
alter table Book add foreign key (stId) references UserStudent (ID);
alter table UserStudent modify column GPA double(5,3);

insert into UserEmp values('3467988880' , 'Aljazi Sultan'   ,'Aljazis@iau.edu.sa' ,'F', 'Sultan_Aljazi');
insert into UserEmp values('3468977554' , 'Maha Mufreh'   ,'Maham@iau.edu.sa' ,'F', 'Maha_m');
insert into UserEmp values('3469548272' , 'Khaznah Mubark'   ,'Khaznahm@iau.edu.sa' ,'F', 'Khazznah_');
select *from UserEmp;
insert into IDcard values('1075372216' , 'Sumayah Nasser'   ,'Saudi' ,' 1998-10-03 ', '2018-05-05', 'B+');
insert into IDcard values('1004262157' , 'Nourah Ahmed'   ,'Saudi' , '2001-04-07' , '2024-05-05','O-');
insert into IDcard values('1024729215' , 'Sara Mohammed'   ,'Saudi' , '2000-11-08' , '2023-05-05', 'A+');
insert into IDcard values('1103822677' , 'Sara Saad'   ,'Saudi' ,'2002-07-04' , '2025-05-05','AB+');
insert into IDcard values('1001792184' , 'Fatimah Rashid'   ,'Saudi' ,'1999-12-20', '2021-05-05','O+');
select *from IDcard;


insert into Club values('Fitness club', 'Sumayah Nasser' , ' 2160003733@iau.edu.sa ' , ' public ' , 'fitness training' );
insert into Club values('Computer Science club', 'Nourah Ahmed' , '2200008321@iau.edu.sa', 'private' , 'programmer' );
insert into Club values('Toastmaster', 'Sara Saad' , ' 2210008003@iau.edu.sa ' , 'public' , 'Leadership skills' );
select *from Club;


insert into UserStudent values('2160003733', 'Sumayah Nasser'   ,'Mathematics' , '9th', '2160003733@iau.edu.sa' , 'F' ,4.2, '1075372216', 'Fitness club', 'Sum_Nasser' );
insert into UserStudent values('2200008321', 'Nourah Ahmed'   ,'Computer Science' , '4th', '2200008321@iau.edu.sa' , 'F' ,4.7,'1004262157', 'Computer Science club', 'ahm_nora');
insert into UserStudent values('2190008843', 'Sara Mohammed'   ,'Computer Science' , '6th', '2190008843@iau.edu.sa' , 'F' ,3.4, '1024729215', null , 'Sara90');
insert into UserStudent values('2210008003', 'Sara Saad'   ,'Prep Year' , '1th', '2210008003@iau.edu.sa' , 'F' ,4.0, '1103822677', 'Toastmaster', '_75Sara_');
insert into UserStudent values('2180008845', 'Fatimah Rashid'   ,'Physics' , '7th', '2180008845@iau.edu.sa' , 'F' ,4.9, '1001792184', null, 'FatimahRashid_oth');
select *from UserStudent;


Insert into Book values('Sara Mohammed', 101, 'Biology',1999,'2190008843','2020-04-01', '2021-04-01'  );
Insert into Book values('Nourah Ahmed', 202,'The Brain ', 2010 ,'2200008321', '2020-08-06', '2021-03-04' );
Insert into Book values('Sumayah Nasser', 414,'Seeds and Trees ', 2017 ,'2160003733','2017-07-01','2017-9-05' );
insert into Book values('Sumayah Nasser', 120,'Positive Thinking ', 1998,'2160003733', '2018-02-02','2018-02-24');
select *from Book;
insert into Edit_bookSystem values (202, '3469548272', 5);
insert into Edit_bookSystem values (414, '3468977554', 9);
insert into Edit_bookSystem values (101, '3467988880', 1);
insert into Edit_bookSystem values (120, '3469548272', 4);
select *from Edit_bookSystem;
Insert into Locker values('Sumayah Nasser' , '2160003733', 110 , 'A' ,  1  );
Insert into Locker values('Fatimah Rashid', '2180008845',402 , 'B' ,  2  );
Insert into Locker values('Nourah Ahmed' , '2200008321', 401, 'B' , 1  );
Insert into Locker values('Sara Mohammed', '2190008843' , 112, 'A' , 2 );
Insert into Locker values('Sara Saad'  , '2210008003', 500, 'C' ,  2  );
select *from Locker;
insert into emp_phone values ('0530702260', '3469548272');
insert into emp_phone values('0536280876', '3468977554');
insert into emp_phone values('0501906647', '3468977554');
insert into emp_phone values('0535329888', '3467988880');
insert into emp_phone values('0534904050', '3467988880');
select *from emp_phone;
insert into std_phone values('0546668970', '2160003733');
insert into std_phone values('0535677802', '2180008845');
insert into std_phone values('0550456321', '2200008321');
insert into std_phone values('0543306098', '2190008843');
insert into std_phone values('0533364389', '2210008003');
select *from std_phone;


Select StudentNameF from UserStudent where (StudentNameF LIKE 'S%') AND (StudentNameF LIKE '%e_');
Select StudentNameEMP from UserEmp order by StudentNameEMP ASC;
Select StudentNameF from UserStudent order by StudentNameF ASC;
SELECT ID  , StudentNameF FROM UserStudent WHERE StClubName IS NOT NULL;

SELECT ID  , StudentNameF FROM UserStudent WHERE StClubName IS  NULL;

SELECT stdID  , StudentName, Levelst FROM UserStudent , Locker WHERE LockerNum= 401 or LockerNum= 402;

SELECT StudentNameID FROM IDcard UNION all SELECT StudentName FROM Locker;
SELECT StudentNameF , ID FROM  UserStudent WHERE EXISTS (SELECT BorrowerName FROM Book WHERE Book.BorrowerName=UserStudent.StudentNameF );
sELECT StudentNameF StudentNameF,  Major , levelst FROM  UserStudent WHERE not EXISTS (SELECT BorrowerName FROM Book WHERE Book.BorrowerName=UserStudent.StudentNameF );
SELECT StudentNameF,  Major , levelst FROM UserStudent WHERE NOT EXISTS (SELECT * FROM Club WHERE Club.STName = UserStudent.StudentNameF );
SELECT empID,StudentNameEMP , USERnameEmp  , CASE Gender    WHEN  'F'THEN 'Female'ELSE 'Male' END as Gender FROM UserEmp;

  #lab 2     
Select Max(GPA) from UserStudent;       
    #lab 3
Select ID
from UserStudent  
where StudentNameF='Sumayah Nasser';

#lab 4
alter table UserStudent
add constraint Genderr CHECK (Gender='F' OR Gender='M');

#lab 5
Create view view_1
as 
Select GPA
from UserStudent 
Where StudentNameF ='Sara Mohammed';

#lab 6
SELECT AVG(GPA) FROM UserStudent where Major ='Computer Science';

#lab 9
create trigger Student_Club
after
insert on UserStudent 
for each row
update Club 
set GPA= 4.6
where ClubName='Fitness club';


#lab 10
Delimiter $$
CREATE PROCEDURE All_Info( In S_name varchar (25) )
BEGIN
SELECT * from UserStudent 
where StudentNameF= S_name ; 
END;$$
Delimiter ;

delimiter ;
SELECT @name_ :='Nourah Ahmed';
CALL All_Info(@name_); 