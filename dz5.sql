CREATE DATABASE dz5;
use dz5;
CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

CREATE VIEW cars_test
  AS SELECT id,name,cost
	  FROM cars
WHERE cost <= 25000;

SELECT * from cars_test;
		
ALTER VIEW cars_test
  AS SELECT id,name,cost
	  FROM cars
WHERE cost <= 30000;
 SELECT * from cars_test;

DROP VIEW cars_test2;
CREATE VIEW cars_test2
  AS SELECT id,
  name,
  cost
	  FROM cars
WHERE name = "Skoda" or name= "Audi";

 SELECT * from cars_test2;