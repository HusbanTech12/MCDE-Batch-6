
-- Use bikestores db

USE bikestores;


-- Task 9:  List the top 10 most expensive products, sorted by price descending.

 
 SELECT top 10 * FROM production.products;



-- Task 10:  List all customers sorted by last name (A–Z), then first name (A–Z).

 SELECT first_name,last_name FROM sales.customers ORDER BY first_name, last_name;