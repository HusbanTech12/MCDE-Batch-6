
-- Task 41: List each staff member alongside their manager's full name.
-- If a staff member has no manager (top-level), still show them with NULL for manager name.

SELECT * FROM sales.staffs;



SELECT 
 e.first_name + ' ' + e.last_name AS employee,
 m.first_name + ' ' + m.last_name AS manager
FROM sales.staffs AS e
LEFT JOIN sales.staffs AS m
ON e.manager_id = m.staff_id;


-- Task 42: Find pairs of products from the same brand that have the exact same list price.
-- Show both product names and the brand name.

SELECT * FROM production.brands
SELECT * FROM production.products