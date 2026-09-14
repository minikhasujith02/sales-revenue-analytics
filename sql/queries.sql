-- Sales & Revenue Analytics — SQL Queries
-- Database: sales_analytics

-- 1. Overall KPIs
SELECT 
    COUNT(*) AS total_orders,
    SUM(Sales) AS total_revenue,
    ROUND(AVG(Sales), 2) AS avg_order_value
FROM sales;

-- 2. Revenue by Region
SELECT 
    Region,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales
GROUP BY Region
ORDER BY total_revenue DESC;

-- 3. Revenue by Category
SELECT 
    Category,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales
GROUP BY Category
ORDER BY total_revenue DESC;

-- 4. Top 10 Sub-Categories by Revenue
SELECT 
    `Sub-Category`,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales
GROUP BY `Sub-Category`
ORDER BY total_revenue DESC
LIMIT 10;

-- 5. Monthly/Yearly Sales Trend
SELECT 
    `Order Year`,
    `Order Month`,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales
GROUP BY `Order Year`, `Order Month`
ORDER BY `Order Year`, `Order Month`;

-- 6. Top 10 Customers by Revenue
SELECT 
    `Customer Name`,
    COUNT(*) AS total_orders,
    ROUND(SUM(Sales), 2) AS total_revenue
FROM sales
GROUP BY `Customer Name`
ORDER BY total_revenue DESC
LIMIT 10;

-- 7. Shipping Performance by Ship Mode
SELECT 
    `Ship Mode`,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Shipping Days`), 1) AS avg_shipping_days
FROM sales
GROUP BY `Ship Mode`
ORDER BY avg_shipping_days;