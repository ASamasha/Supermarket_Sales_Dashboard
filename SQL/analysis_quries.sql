-- Total Revenue
SELECT SUM(sales) AS total_revenue
FROM sales;

-- Monthly Sales
SELECT Month,
       SUM(sales) AS total_sales
FROM sales
GROUP BY Month;

-- Best Product Categories
SELECT product_line,
       SUM(sales) AS total_sales
FROM sales
GROUP BY product_line
ORDER BY total_sales DESC;

-- Highest Revenue Branch
SELECT branch,
       SUM(sales) AS total_revenue
FROM sales
GROUP BY branch
ORDER BY total_revenue DESC;

-- Most Used Payment Method
SELECT payment,
       COUNT(*) AS total_customers
FROM sales
GROUP BY payment
ORDER BY total_customers DESC;