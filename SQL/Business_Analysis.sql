USE superstore_analysis;

-- -----------------------------------------------------
-- Q1. Total Sales by Region
-- Purpose: Find which region generates the highest revenue.
-- -----------------------------------------------------

SELECT region,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;

-- -----------------------------------------------------
-- Q2. Total Profit by Region
--  Purpose: Compare profitability across regions.
-- -----------------------------------------------------

SELECT region,
       ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY region
ORDER BY total_profit DESC;

-- -----------------------------------------------------
-- Q3. Average Sales by Category
--  Purpose: Compare average order value across categories.
-- -----------------------------------------------------

SELECT category,
       ROUND(AVG(sales),2) AS average_sales
FROM superstore_sales
GROUP BY category
ORDER BY average_sales DESC;

-- -----------------------------------------------------
-- Q4. Average Profit by Category (Above 30)
--  Purpose: Identify categories with good average profit.
-- -----------------------------------------------------

SELECT category,
       ROUND(AVG(profit),2) AS average_profit
FROM superstore_sales
GROUP BY category
HAVING AVG(profit) > 30
ORDER BY average_profit DESC;

-- -----------------------------------------------------
-- Q5. Total Sales by Customer Segment
--  Purpose: Understand revenue contribution of each customer segment.
-- -----------------------------------------------------

SELECT segment,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore_sales
GROUP BY segment
ORDER BY total_sales DESC;

-- -----------------------------------------------------
-- Q6. Top 10 Customers by Total Sales
--  Purpose: Identify highest-value customers.
-- -----------------------------------------------------

SELECT customer_name,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore_sales
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- -----------------------------------------------------
-- Q7. Top 10 Products by Total Sales
--  Purpose: Find best-selling products by revenue.
-- -----------------------------------------------------

SELECT product_name,
       ROUND(SUM(sales),2) AS total_sales
FROM superstore_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- -----------------------------------------------------
-- Q8. Top 5 States by Total Profit
--  Purpose: Find the most profitable states.
-- -----------------------------------------------------

SELECT state,
       ROUND(SUM(profit),2) AS total_profit
FROM superstore_sales
GROUP BY state
ORDER BY total_profit DESC
LIMIT 5;

-- -----------------------------------------------------
-- Q9. Top 10 Sub-Categories by Quantity Sold
--  Purpose: Identify the most frequently sold product types.
-- -----------------------------------------------------

SELECT sub_category,
       SUM(quantity) AS total_quantity
FROM superstore_sales
GROUP BY sub_category
ORDER BY total_quantity DESC
LIMIT 10;

-- -----------------------------------------------------
-- Q10. Categories with Average Discount Greater Than 20%
--  Purpose: Identify categories receiving high discounts.
-- -----------------------------------------------------

SELECT category,
       ROUND(AVG(discount)*100,2) AS average_discount_percentage
FROM superstore_sales
GROUP BY category
HAVING AVG(discount) > 0.20
ORDER BY average_discount_percentage DESC;