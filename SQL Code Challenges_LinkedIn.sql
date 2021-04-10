--SQL Code Challenges from Linkedin Learning
--- PART 1, RESTAURANT

--Q1 CREATE INVITATION TO A PARTY
/*provide a list of the customers from the customers table in the restaurant database, 
which shows the customer's first name, last name, and e-mail address. Sorted alphabetically by last name. */

SELECT FirstName, LastName, Email 
FROM Customers
ORDER BY LastName;

--Q2 CREATE A TABLE TO STORE CUSTOMER INFORMATION
/* create a table to record customer information and how many people they'll have in their party. */

CREATE TABLE AnniversaryAttendees ("CustomerID" INT, "PartySize" INT);

--Q3 PRINT A MENU
/*all the dishes from the Dishes table sorted by price, lowest to highest */

SELECT * 
FROM Dishes
ORDER BY Price;

/*an appetizer hour with just appetizers and beverages*/

SELECT * 
FROM Dishes
WHERE Type = "Appetizer" OR Type = "Beverage"
ORDER BY Type;

/*all the items, except beverages*/

SELECT * 
FROM Dishes
WHERE Type != "Beverage"
ORDER BY Type;

--Q4 Sign a customer up for your loyalty program
/* take information from this customer's sign up card 
and add it to the customers table in the restaurant database.*/

INSERT INTO Customers (FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES ("Alifia", "Harmadi", "alifia@gmail.com", "55 Blacktown Lane", "Washington", "DC", "989-125-2367", "1999-04-01");

--Q5 Update a customer's personal information
/* Name: Taylor Jenkins, Old Addess: 27170 6th Ave., Washington, DC, 
New Address: 74 Pine St., New York, NY*/

--Find the correct customer
SELECT * FROM Customers
WHERE FirstName= "Taylor" and LastName="Jenkins";

--Update their infomation
UPDATE Customers 
SET Address= "74 Pine St.",
	City = "New York",
	State = "NY"
WHERE CustomerID = "26";

--Q6 Remove a customer's record
/* check the correct customer data*/
Select * FROM customers
WHERE FirstName = "Taylor" and LastName="Jenkins";

/*Delete the data*/
DELETE FROM Customers WHERE CustomerID = "4";

--Q7 Log custoner responses to AnniversaryAttendees with EMAIL ADDRESS
INSERT INTO AnniversaryAttendees (CustomerID,PartySize)
VALUES 
((SELECT CustomerID FROM Customers WHERE Email = "atapley2j@kinetecoinc.com"), "4");

--Q8 Look up reservation with customer name that sound like "Ste something" with 4 people on 14th of june around 6pm
SELECT C.FirstName, C.LastName, R.Date, R.PartySize
FROM Reservations as R 
JOIN Customers as C
ON C.CustomerID = R.CustomerID
WHERE C.LastName LIKE "Ste%" AND PartySize = "4";

--Q9 Take a reservation
--Check the Customer
SELECT * FROM Customers WHERE Email = "smac@rouxacademy.com";  --Result is none

--Add the customer to Customers Table
INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ("Sam", "McAdams", "smac@rouxacademy.com", "(555)555-1212");

--Add the customer reservation to Reservations Table on 14th of July 2020 with 5 people
INSERT INTO Reservations ( CustomerID, Date, PartySize)
VALUES ("102", "2020-06-14 18:00:00", "5");

--Q10 Take a delivery order 


