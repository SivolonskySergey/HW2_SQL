CREATE TABLE orders 
(
orderid INT PRIMARY KEY AUTO_INCREMENT,
employeeid VARCHAR(10),
amount FLOAT,
orderstatus VARCHAR(10)
);

INSERT orders (employeeid, amount, orderstatus)
VALUES
("e03", "15.00", "OPEN"),
("e01", "25.50", "OPEN"),
("e05", "100.70", "CLOSED"),
("e02", "22.18", "OPEN"),
("e04", "9.50", "CANCELLED"),
("e04", "99.99", "OPEN");


SELECT * FROM HW2_db.orders;

SELECT orderid, orderstatus,
   CASE
     WHEN orderstatus = "OPEN" THEN "Order is in open state."
     WHEN orderstatus = "CLOSED" THEN "Order status is closed."
     ELSE "Order is cancelled."
   END AS order_summary
FROM orders;

