USE superstore_analysis;

-- -----------------------------------------------------
-- Q1. Preview the first 10 records in the dataset.
-- Purpose: Understand the structure of the dataset.
-- -----------------------------------------------------

SELECT *
FROM superstore_sales
LIMIT 10;

-- -----------------------------------------------------
-- Q2. Display all unique product categories.
-- Purpose: Identify the different product categories sold.
-- -----------------------------------------------------

SELECT DISTINCT category
FROM superstore_sales;

-- -----------------------------------------------------
-- Q3. Display all unique customer segments.
-- Purpose: Understand customer segmentation.
-- -----------------------------------------------------

SELECT DISTINCT segment
FROM superstore_sales;

-- -----------------------------------------------------
-- Q4. Count the total number of orders.
--  Purpose: Find total transactions in the dataset.
-- -----------------------------------------------------

SELECT COUNT(order_id) AS total_orders
FROM superstore_sales;

-- -----------------------------------------------------
-- Q5. Find the highest and lowest sales value.
-- Purpose: Identify sales range.
-- -----------------------------------------------------

SELECT
    MAX(sales) AS highest_sale,
    MIN(sales) AS lowest_sale
FROM superstore_sales;

-- -----------------------------------------------------
-- Q6. Display all orders from California.
-- Purpose: Analyze sales in California.
-- -----------------------------------------------------

SELECT customer_name, city, state, sales
FROM superstore_sales
WHERE state = 'California';

-- -----------------------------------------------------
-- Q7. Display Furniture products with sales greater than 500.
-- Purpose: Find high-value furniture sales.
-- -----------------------------------------------------

SELECT product_name, category, sales
FROM superstore_sales
WHERE category = 'Furniture'
  AND sales > 500
ORDER BY sales DESC;

-- -----------------------------------------------------
-- Q8. Display Technology products sorted by sales.
-- Purpose: Analyze technology product performance.
-- -----------------------------------------------------

SELECT product_name, sales
FROM superstore_sales
WHERE category = 'Technology'
ORDER BY sales DESC;

-- -----------------------------------------------------
-- Q9. Find total quantity sold across all transactions.
-- Purpose: Measure total units sold.
-- -----------------------------------------------------

SELECT SUM(quantity) AS total_quantity_sold
FROM superstore_sales;

-- -----------------------------------------------------
-- Q10. Display the top 10 highest sales transactions.
-- Purpose: Identify highest-value orders.
-- -----------------------------------------------------

SELECT order_id, customer_name, sales
FROM superstore_sales
ORDER BY sales DESC
LIMIT 10;