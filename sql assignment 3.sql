use day1;
# 1) Which product has the highest estimated sale price, and what is the price?

select Estimated_Sale_Price,product  from bank_inventory_pricing
order by Estimated_Sale_Price desc limit 1;


#2) Calculate the total profit for each product (Estimated Sale Price - Purchase Cost).

select product,SUM(COALESCE(Estimated_Sale_Price,0) - COALESCE(Purchase_Cost,0)) as total_profit 
from bank_inventory_pricing GROUP BY PRODUCT; # HERE I AM USING COALESCE FUNCTION RETURN 0 WHEREEVER NULL VALUES EXIST

#3) How many products have missing values in the "purchase_cost" column?
select product,purchase_cost from bank_inventory_pricing where purchase_cost is null; #HERE I AM SEEING THE NULL VALUES
select count(product) from bank_inventory_pricing where purchase_cost is null; #HERE I AM COUNTING THE NULL VALUES
#ans:- 11 products have null values in purchase cost

#4) Calculate the total purchase cost for each product.
select product,sum(COALESCE(purchase_cost,0)) as Total_purchase_cost from bank_inventory_pricing group by product;# HERE I AM USING COALESCE FUNCTION RETURN 0 WHEREEVER NULL VALUES EXIST


#5) Calculate the total revenue for each product (Quantity * Estimated Sale Price).

SELECT product,sum(quantity * Estimated_Sale_Price) as revenue from bank_inventory_pricing group by product;