--  List every order with the customer's full name, store name, 
--  and the full name of the staff member who handled it.

SELECT 
  o.order_id,
  c.first_name + ' ' + c.last_name AS customer_name,
  s.store_name,
  st.first_name + ' ' + st.last_name AS staff_name

FROM sales.orders o
INNER JOIN sales.customers c
ON o.customer_id = c.customer_id
INNER JOIN sales.stores AS s
 ON o.store_id = s.store_id
INNER JOIN sales.staffs AS st
ON o.staff_id = st.staff_id


-- Show each product with its brand name and category name. 
-- Include products even if they have no brand or category assigned.


SELECT 
 p.product_name,
 b.brand_name,
 c.category_name
FROM production.products p
INNER JOIN  production.brands b
ON p.brand_id = b.brand_id

INNER JOIN production.categories c
ON p.category_id = c.category_id



-- Find all customers who have never placed an order. Return their name, city, and email.

SELECT 
 c.first_name + ' ' + c.last_name As full_name,
 c.city,
 c.email
FROM sales.customers c
LEFT JOIN sales.orders o
ON c.customer_id = o.customer_id

WHERE o.order_id IS NULL;



-- Calculate total revenue per store.
-- Revenue = quantity * list_price * (1 - discount). Sort from highest to lowest.

