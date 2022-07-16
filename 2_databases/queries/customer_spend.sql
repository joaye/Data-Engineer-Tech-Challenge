-- 1. list of customer and spending
SELECT distinct customer_name, 
       SUM(price) as total_price 
FROM Transaction t1 
JOIN 
(SELECT serial_number, price FROM Car) t2 
ON t1.serial_number = t2.serial_number 
group by customer_name;