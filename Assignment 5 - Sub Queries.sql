--  Subquery in WHERE Clause

-- Products priced above the overall average

SELECT
    product_name, 
    list_price                  
FROM production.products          -- Outer Query 

WHERE list_price > (
    
    SELECT AVG(list_price)        -- Inner Query
    FROM production.products
);
