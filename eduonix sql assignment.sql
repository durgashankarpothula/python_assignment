CREATE DATABASE day1;
USE DAY1
CREATE TABLE store_sales(month_of_sale varchar(20),prod_name varchar(20),sales int);

INSERT INTO store_sales(month_of_sale,prod_name,sales)
 values("jan","fruits","45000"),
 ("jan","vegetables","67000"),
 ("jan","dairy","55000"),
 ("feb","fruits","42000"),
 ("feb","vegetables","32000"),
 ("feb","dairy","52000"),
 ("march","fruits","61000"),
 ("march","vegetables","43000"),
 ("march","dairy","92000");
 SELECT * FROM store_sales
