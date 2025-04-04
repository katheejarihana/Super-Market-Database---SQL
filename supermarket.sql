CREATE TABLE Customer (
custNumber varchar(3) Primary Key Not Null, 
custName varchar(30) Not Null,
custEmail varchar(20)Not Null, 
custPhone int,
custCity varchar(20)Not Null
);



CREATE TABLE RetailOrder(
    storeNumber int Primary key Not Null, 
    OrderNumber int Not Null , 
    storeCity varchar(20)Not Null, 
    storePhone int,
    Manager varchar(20)Not Null, 
    OrderMonth varchar(10) Not Null, 
    OrderYear int Not Null, 
    OrderType varchar(20), 
    OrderTotal int
);


CREATE TABLE OrderItem(

OrderNumber int Primary key Not Null, 
ItemID varchar(20)Not NULL,
Quantity int

);

CREATE TABLE FlowerArrangements(
ArrangeID varchar(20) Primary key Not Null, 
ArrangeName varchar(20)Not NULL,
style varchar(20),
occasion varchar(20)Not Null, 
arrangePrice varchar(20)
);

CREATE TABLE Accessory(

AccessoryID varchar(20) Primary key Not Null, 
AccessoryName varchar(20)Not NULL, 
AccessoryPrice varchar(20)

);


Insert into Customer(custNumber, custName, custEmail,custPhone, custCity) Values ('C01','David Smith', 'dsmith@gmail.com', 09764443, 'Sydney');
Insert into Customer(custNumber, custName, custEmail,custPhone, custCity) Values ('C02', 'Adward', 'adward@gmail.com', 8765433, 'Perth');
Insert into Customer(custNumber, custName, custEmail,custPhone, custCity) Values ('C03','Esra', 'Esra@gmail.com', 6456777, 'Melbourne');




Insert into RetailOrder Values(1500,1,'Sydney',	27747234,	'Kim', 'Dec', 2019, 'InPerson',	'170');
Insert into RetailOrder Values(1501, 3,	'Perth',	45343623,	'Len', 'Jan', 2020, 'InPerson','400');
Insert into RetailOrder Values(1502, 2,	'Melbourne', 23687326,	'Bill',	'Feb', 2020	,'Online','450');
Insert into RetailOrder values(1504, 5,	'Adelaide',	76348235,	'Jill',	'Mar', 2020, 'Phone','250');



Insert into OrderItem(OrderNumber,ItemID,Quantity) values(1501, 'F01', 2);
Insert into OrderItem values(1502, 'F01', 3);
Insert into OrderItem values(1503, 'F03', 3);
Insert into OrderItem values(1504, 'F03', 3);


Insert into FlowerArrangements(ArrangeID,ArrangeName,style,occasion,arrangePrice) values('F01', 'Iris',	'Vase',	'Anniversary',	'$80');
Insert into FlowerArrangements values('F02', 'Orchids',	'centrepiece',	'Congratulations',	'$150');
Insert into FlowerArrangements values('F03', 'Lilies',	'Hamper',	'Thank you', '$100');
Insert into FlowerArrangements values('F04', 'Rainbow',	'Bouquet',	'Wedding',	'$110');
Insert into FlowerArrangements values('F05', 'Sunflowers', 'Boxed',	'Get Well',	'$60');


Insert into Accessory(AccessoryID,AccessoryName,AccessoryPrice) values('A01', 'Teddy bear', '$50');
Insert into Accessory values('A02', 'Chocolate', '$20');
Insert into Accessory values('A03', 'Basket',	'$30');
Insert into Accessory values('A04', 'Plant',	'$25');


Select* from FlowerArrangements;

SELECT custNumber, custName, custEmail,custPhone FROM Customer WHERE custCity = 'Sydney';

SELECT OrderNumber,storeNumber,storeCity FROM RetailOrder WHERE storeNumber = 2;

update Customer
set CustCity='BARKA'
where CustName = 'Adward';


SELECT SUBSTR(AccessoryID,1,3)
from Accessory;

SELECT * from FlowerArrangements where ArrangePrice='$110';

Alter Table Accessory
rename column AccessoryName
TO
AccessName;


Select OrderMonth,OrderYear, OrderType from RetailOrder where OrderMonth ='Feb';


Drop table Accessory;