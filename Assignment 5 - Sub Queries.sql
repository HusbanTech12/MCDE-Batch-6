--  Subquery in WHERE Clause

--  Write a query using a scalar subquery that returns all products with a list_price above the average price in their brand.
--  Use a correlated subquery in WHERE.

SELECT
    product_name, 
    list_price                  
FROM production.products          -- Outer Query 

WHERE list_price > (
    
    SELECT AVG(list_price)        -- Inner Query
    FROM production.products
);


--  
