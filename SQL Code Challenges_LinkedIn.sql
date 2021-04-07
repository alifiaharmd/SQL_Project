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
VALUES ("Alifia", "Harmadi", "alifia@gmail.com", "55 Blacktown Lane", "Washington", "DC", "989-125-2367", "1999-04-01")

--Q5 Update a customer's personal information
/* Name: Taylor Jenkins, Old Addess: 27170 6th Ave., Washington, DC, 
New Address: 74 Pine St., New York, NY*/

--Find the correct customer
SELECT * FROM Customers
WHERE FirstName= "Taylor" and LastName="Jenkins"

--Update their infomation
UPDATE Customers 
SET Address= "74 Pine St.",
	City = "New York",
	State = "NY"
WHERE CustomerID = "26";

--Q6 Remove a customer's record
/* check the correct customer data*/
Select * FROM customers
WHERE FisrtName = "Taylor" and LastName="Jenkins"

/*Delet the data*/
DELETE 


--Q7 Log custoner responses

--Q8 Look up reservation
