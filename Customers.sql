SELECT * FROM guvi_task.customer;

describe guvi_task.customer;

SELECT max(Quantity)
FROM guvi_task.customer;

SELECT min(Quantity)
FROM guvi_task.customer;

SELECT DISTINCT City
FROM guvi_task.customer;

SELECT DISTINCT customer_type
FROM guvi_task.customer;

SELECT 
CASE WHEN Gender = 'Male' THEN 'Male'
WHEN Gender = 'Female' THEN 'Female'
ELSE NULL END AS gender_distribution,
COUNT(1) as Count
FROM guvi_task.customer
GROUP BY 1;

SELECT DISTINCT product_line
FROM guvi_task.customer;
SELECT
COUNT(CASE WHEN product_line = 'Food and beverages' THEN 1 ELSE NULL END) as 'F&B',
COUNT(CASE WHEN product_line = 'Sports and travel' THEN 1 ELSE NULL END) as 'S&T',
COUNT(CASE WHEN product_line = 'Health and beauty' THEN 1 ELSE NULL END) as 'H&B',
COUNT(CASE WHEN product_line = 'Home and lifesyle' THEN 1 ELSE NULL END) as 'H&L',
COUNT(CASE WHEN product_line = 'Electronic accessories' THEN 1 ELSE NULL END) as 'Electronic accessories',
COUNT(CASE WHEN product_line = 'Fashion accessories' THEN 1 ELSE NULL END) as 'Fashion'
FROM guvi_task.customer;

SELECT MAX(unit_price*Quantity) AS Max_price
FROM guvi_task.customer;

SELECT MIN(unit_price*Quantity) AS Min_price
FROM guvi_task.customer;

SELECT DISTINCT Branch
FROM guvi_task.customer;

SELECT 
CASE 
WHEN Branch = 'A' then 'A'
WHEN Branch = 'B' THEN 'B'
WHEN Branch = 'C' THEN 'C'
ELSE NULL END AS Branch_distribution,
COUNT(1) AS count
FROM guvi_task.customer
GROUP BY 1;

SELECT DISTINCT Payment
FROM guvi_task.customer;

SELECT CASE
WHEN Payment = 'Credit card' THEN 'Credit card'
WHEN Payment = 'Cash' THEN 'Cash'
WHEN Payment = 'Ewallet' THEN 'Ewallet'
ELSE NULL END AS 'Payment_methods',
COUNT(1) AS count_payment_methods
FROM guvi_task.customer
GROUP BY 1;

SELECT str_to_date(Selling_Date, '%Y.%m.%d') as order_date 
FROM guvi_task.customer;

SELECT COUNT(customer_type)
FROM guvi_task.customer
WHERE customer_type LIKE 'N%';

SELECT COUNT(customer_type)
FROM guvi_task.customer
WHERE customer_type LIKE '_e%';

SELECT MAX(rating) as max_rating
FROM guvi_task.customer;

SELECT MIN(rating) AS min_rating
FROM guvi_task.customer;

SELECT *
FROM guvi_task.customer
WHERE rating BETWEEN 7 AND 10
ORDER BY Branch;

SELECT *
FROM guvi_task.customer
WHERE rating BETWEEN 1 AND 5
ORDER BY Branch;

SELECT ROUND(AVG(rating),2) as avg_rating, product_line
FROM guvi_task.customer
GROUP BY product_line;

SELECT ROUND(AVG(rating),2) as avg_rating, product_line
FROM guvi_task.customer
GROUP BY product_line
ORDER BY 1,2;

SELECT ROUND(AVG(rating),1) as avg_rating, product_line
FROM guvi_task.customer
GROUP BY product_line
ORDER BY 1 DESC,2;