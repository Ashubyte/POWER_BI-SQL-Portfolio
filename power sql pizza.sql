select*from pizza_sales;

select sum(total_price) from pizza_sales


select sum (total_price) as total_revenue from pizza_sales

 
select * from pizza_sales

select sum(total_price) / count (distinct order_id) from pizza_sales

select sum(total_price) / count (distinct order_id) as Avg_order_value from pizza_sales

select sum(quantity) from pizza_sales


select sum(quantity) as total_pizza_sold from pizza_sales


select COUNT (distinct order_id) as total_orders from pizza_sales

select  cast (sum(quantity) as decimal(10,2)) / cast (count(distinct  order_id) as decimal(10,2)) 
as AVG_PIZZAS_PER_ORDER from pizza_sales 


select*from pizza_sales

select datename(dw, order_date) as order_day, count(distinct order_id) as Total_orders from pizza_sales
group by datename(dw, order_date)

 select datename(month, order_date) as manth_name , count(distinct order_id)
 as Total_order from pizza_sales
 group by datename(month, order_date)

 select * from pizza_sales

select pizza_category , sum (total_price) * 100 / (select sum(total_price) from pizza_sales)
 as total_sales from pizza_sales
group by pizza_category


select pizza_category , sum(total_price) as Total_sales,sum (total_price) * 100 / (select sum(total_price) 
from pizza_sales  where month(order_date)=1)
 as pct from pizza_sales
where month(order_date)=1 
group by pizza_category


SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category


SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size



SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC


SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC



SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC


-- Top 5 Pizzas by Total Orders

SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC




SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
