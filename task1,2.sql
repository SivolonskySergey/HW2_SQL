CREATE TABLE sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE,
bucket VARCHAR(30)
);

INSERT sales (order_date, bucket)
VALUES
("2021-01-01", "101 to 300"),
("2021-01-02", "101 to 300"),
("2021-01-03", "less than equal to 100"),
("2021-01-04", "101 to 300"),
("2021-01-05", "greater than 300");


SELECT * FROM HW2_db.sales;

SELECT bucket, order_date,
  CASE 
    WHEN bucket = "less than equal to 100" THEN "маленький заказ"
    WHEN bucket = "greater than 300" THEN "большой заказ"
    ELSE "средний заказ"
  END AS results
FROM sales;
