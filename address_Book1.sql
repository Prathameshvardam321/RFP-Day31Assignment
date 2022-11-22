/*  Address_Book_Service  */
#UC1
create  database Address_Book_Service;
use Address_Book_Service;

#UC2
create table address_book_table(
first varchar(20),
last varchar(20),
city varchar(20),
state varchar(20),
zip int ,
phone_number int,
email varchar(30),
primary key(first)
);
 
 #UC3
 insert into address_book_table(first,last,city,state,zip,phone_number,email) values("Prathmesh","Vardam","Mumbai","Mahrashtra",400078,992019,"Ptaj@gmail.com"),("Romil","Ghadge","Pune","Mahrashtra",800078,992719,"Romilghaj@gmail.com"),("Sarvesh","Pednekar","Ratnagiri","Mahrashtra",400098,987019,"Sarveshped32@gmail.com"),("Vaibhav","Gopale","Khed","Mahrashtra",400078,992019,"Gopale34@gmail.com");
 select * from address_book_table ;
 insert into address_book_table(first,last,city,state,zip,phone_number,email) values("Vaibhav","Gopale","Khed","Mahrashtra",400078,992019,"Gopale34@gmail.com");
  insert into address_book_table(first,last,city,state,zip,phone_number,email) values("Pravin","Zaple","Khed","Mahrashtra",400078,992019,"Gopale34@gmail.com");
 
 #UC4
 update address_book_table set city = "Pune"
 where first = "Prathmesh";
 
 #UC5
delete from address_book_table
 where first = "Vaibhav";
 
 #UC6
 select * from address_book_table
 where state = 'Mahrashtra';
  select * from address_book_table
 where city = 'Pune';
 
 #UC7
 select count(state) from address_book_table
where state = 'Mahrashtra';
select count(city) from address_book_table
where city ='Pune';

#UC 8
select * from address_book_table
where city =  'Pune' order by first desc;

#UC9
alter table address_book_table add address_book_name varchar(20) after last ;
alter table address_book_table add address_book_type varchar(20) after address_book_name ;
update address_book_table set address_book_name = "Friends Forever"
where first = 'romil';
update address_book_table set address_book_name = "Friends Forever"
where first = 'prathmesh';
update address_book_table set address_book_name = "Friends Forever"
where first = 'sarvesh';
update address_book_table set address_book_name = "Family forever "
where first in("pravin");
update address_book_table set address_book_type = "Family "
where first in("pravin");
update address_book_table set address_book_type = "Friends "
where first in("prathmesh","romil","sarvesh");
select * from address_book_table;

#UC10
select count(address_book_type) from address_book_table
where address_book_type = "Friends ";
select count(address_book_type) from address_book_table
where address_book_type = 'Family ';

#UC11
insert into address_book_table(first,last,city,state,zip,phone_number,email,address_book_type,address_book_name) values("Vaibhav","Gopale","Bhandup","Maharashtra",400334,748373,"Vaibhav123@gmail.com","Friends ","Friends Forever"),("Siddhesh","Shewale","Bhandup","Maharashtra",400334,748373,"sid324@gmail.com","Family ","Family Forever");
select * from address_book_table;

#UC12
#ER diagram
