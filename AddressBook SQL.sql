//uc1
create database AddressBookservice;
show databases;
use addressbookservice
//uc2
create table Address_Book(
FirstName varchar(30) not null,
LastName varchar(20) not null,
Address varchar(100) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(30) not null,
PhoneNumber varchar(20) not null,
Email varchar(50) not null
);
describe Address_book;
select * from Address_book;
//uc3
insert into Address_book Values
('maha', 'lakshmi', 'thyagarajanagar', 'banglore', 'karnataka', '8787', '7783727255', 'klal@gmail.com'),
('teju', 'hasini', 'shastri nagar', 'pune', 'mumbai', '9898', '9277277621', 'jjaha@gmail.com'),
('promod', 'jain', 'banshankari', 'chennai', 'Tamil nadu', '2872', '7727777271', 'jsh@gmail.com');

select *from Address_Book;

//uc4
update Address_Book set Zipcode = '1919', Email = 'mmahaece072gmail.com' where Firstname = 'maha';
select *from Address_Book;
describe Address_Book;
// uc5
delete  from Address_Book
  where FirstName = 'teju';	
  select *from Address_Book;
  
 //uc6
  select * from Address_Book
  where city = 'chennai' or state = 'Tamil nadu';
  
  //uc7
  select City,count(City) from Address_Book group by City;
  select State,count(State) from Address_Book group by State;
  
  //uc8
  select * from Address_Book
where City = 'banglore'
order by FirstName asc;

//uc9
Alter table Address_Book add Addressbook_name varchar(25),add type varchar(50)
update Address_Book set Addressbook_name = 'Home',type = 'Family' where FirstName = 'maha' 
update Address_Book set Addressbook_name = 'Home',type = 'Friends' where FirstName = 'promod' 
update Address_Book set Addressbook_name = 'Office',type = 'Profession' where FirstName = 'teju';
select * from Address_Book
//uc10

 select type, COUNT(FirstName) from address_book group by type;




  
  

  
