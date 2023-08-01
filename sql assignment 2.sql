use day1

CREATE TABLE Customer (cust_id INT , cust_name VARCHAR(20),
contact_name VARCHAR(20),city  VARCHAR(10),
telephone VARCHAR(10));


INSERT INTO Customer VALUES (101, "Oliver", "Joy", "New York", 2016776708), 
(102,"George", "George", "Chicago" , "209761700"),
(103,"Hari","Hari","Texas","202222222"),
(104,"Jack","Noah","California","2000887765")

select * from customer;

CREATE TABLE Orders ( cust_id INT ,  order_id INT ,order_date varchar(20),      shipper_id varchar(20));

INSERT INTO Orders VALUES (101, 4501, '12/03/1997', 'A111' ), (102, 4502, '13/03/1997', 'A112'), (103, 4503, '14/03/1997', 'A113'),
(105,4505,'16/03/1997','A115'),(106,4506,'17/03/1997','A116');

select * from orders;
#Q1:-right join
select * from customer c RIGHT JOIN orders o ON c.cust_id=o.cust_id;

#Q2:-left join
select * from customer c LEFT JOIN orders o ON c.cust_id=o.cust_id;

#Q3:-inner join
select * from customer c INNER JOIN orders o ON c.cust_id=o.cust_id;

#Q4:-outer join
select * from customer c left JOIN orders o ON c.cust_id=o.cust_id UNION select * from customer c right JOIN orders o ON c.cust_id=o.cust_id;

#Q5:-intersect
select * from customer where customer.cust_id in (select orders.cust_id from orders);

#Q6:-union
select cust_name,contact_name,city from customer  union
select order_id,order_date,shipper_id  from orders


#Q7:-union all
select cust_name,contact_name,city from customer  union all
select order_id,order_date,shipper_id  from orders
 
