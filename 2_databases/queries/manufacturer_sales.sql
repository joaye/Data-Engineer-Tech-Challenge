-- 2. Top 3 car manufacturers bought by sales (quantity) and sales number in current month
SELECT manufacturer, 
       count(t1.serial_number) as quantity_sold, 
       sum(price) as total_sales 
FROM Transaction t1 
JOIN 
(SELECT serial_number, manufacturer, price FROM Car) t2 
ON t1.serial_number = t2.serial_number 
WHERE EXTRACT(MONTH from transaction_datetime) = EXTRACT(MONTH from NOW()) 
GROUP BY manufacturer 
ORDER BY count(t1.serial_number) DESC 
LIMIT 3;