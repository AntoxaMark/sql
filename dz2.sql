-- 1. Задание 
CREATE DATABASE if NOT EXISTS dz2;

USE dz2;

CREATE TABLE IF NOT EXISTS sales
(
id int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product int NOT NULL
);

DESC sales;

INSERT INTO sales (order_date,count_product)
VALUE 
 ('2022-01-01','149'),
 ('2022-01-02','180'),
 ('2022-01-03','240'),
 ('2022-01-04','104'),
 ('2022-01-05','179');
SELECT * from sales;
-- 2. Задание 

SELECT id, count_product, -- Перед CASE ставится запятая
CASE
	WHEN count_product < 105 THEN "Маленький заказ"
    WHEN count_product BETWEEN 105 and 150 THEN "Средний заказ"
    WHEN count_product BETWEEN 150 and 250 THEN "Большой заказ"
    ELSE "ERROR"
END AS type_order
FROM sales;
-- 3. Задание

CREATE TABLE IF NOT EXISTS ordes
(
id int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
employee_id VARCHAR (45) NOT NULL,
amount FLOAT NOT NULL
);

INSERT INTO ordes (employee_id,amount)
VALUE 
 ('e02','100.70'),
 ('e05','26.04'),
 ('e03','48.67'),
 ('e01','96.25'),
 ('e04','15.00'); 
 
SELECT * from ordes;

ALTER TABLE ordes
ADD order_status INT;

UPDATE ordes
set order_status = FLOOR(RAND() * 3);

SELECT * from ordes;

SELECT id,employee_id,amount,
CASE
 WHEN order_status = 0 THEN "CLOSE"
 WHEN order_status = 1 THEN "OPEN"
 else "CANCELLED"
END AS order_status
FROM ordes;

/*  
4. задание 
NULL - это есть поле, не содержащее никакого значения 
а 0 - это значение, которе хрнатится в поле 
*/





 