 show databases;
 CREATE DATABASE Holidays;
 USE Holidays;
 CREATE TABLE Holidays_details(
 holiday_id INT NOT NULL,
 destination varchar (20) NOT NULL,
 city varchar (20) NOT NULL,
 airport varchar (20) NOT NULL,
 hotel varchar (20) NOT NULL,
 price INT NOT NULL,
 PRIMARY KEY (holiday_id),
 UNIQUE (holiday_id)
 );

EXPLAIN Holidays_details; 

INSERT INTO Holidays_details (holiday_id, destination, city, airport, hotel, price)
VALUES
(1, "France", "Paris", "CDG", "Les Plumes", "600"),
(2, "Spain", "Barcelona", "BCN", "Monumet", "350"),
(3, " Italy", "Rome", "FCO", "Artemide", "500"),
(4, "England", "London", "HTR", "Four Seasons", "550"),
(5, "USA", "New York", "JFK", "Hilton", "756"),
(6, "Czech Republic", "Praque", "PRG", "Hilton","225"),
(7, "Italy", "Venice", "VCE", "Palazzo", "502"),
(8, "Ireland", "Dublin", "DUB", "Clayton", "156"),
(9, "Sweden", "Stockholm", "ARN", "Icehotel", "322"),
(10, "Turkey", "Istanbul", "IST", "Golden Tulip", "167")
;

select * from Holidays_details;

-- create second table

CREATE TABLE customers(
CustomerName VARCHAR(100),
Address VARCHAR(100), 
City VARCHAR(80),	
PostalCode VARCHAR(10)
);

EXPLAIN customers;

INSERT INTO customers (holiday_id, CustomerName, Address, City, PostalCode)
VALUES
(1, "Toby Flunderson", "Jammy Dogdger Avenue", "London", "N1 2RG"),
(2, "Leslie Knope", "Custard Cream Boulevard", "Essex", "RM3 4TG"),
(3, "Dwight Schrute", "Wagon Wheel Place", "Hertfordshire", "EN2 1RT"),
(4, "Donna Meagle", "Leibniz Lane", "Hertfordshire", "EN2 8PC"),
(5, "April Ludgate", "Digestive Road", "Essex", "RM1 2PJ"),
(6, "Stanley Hudson", "Hobnob Street", "London","E8 0PJ")
;

 select * from Holidays_details order by destination;
 
UPDATE Holidays_details
SET price = 400
WHERE destination = Spain;

Delete From Holidays_details
WHERE holiday_id = '3';
select * from Holidays_details;
  
SELECT * 
FROM Holidays_details
INNER JOIN customers
ON Holidays_details.holiday_id = customers.holiday_id; 

SELECT * 
FROM Holidays_details
FULL JOIN customers
ON Holidays_details.holiday_id = customers.holiday_id;

use customers;
SELECT * FROM Holidays_details, customers
WHERE Holidays_details.holiday_id = customers.holiday_id AND CustomerName = "Toby Flunderson";


SELECT * FROM Holidays_details	
WHERE price between 150 and 250;

SELECT destination
FROM Holidays_details
order by destination asc;