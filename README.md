# sales-revenue-analytics
Sales &amp; Revenue Analytics project using Python, SQL, Excel, and Power BI
# Sales & Revenue Analytics Dashboard
An end-to-end sales and revenue analytics project — from raw data to an interactive dashboard — using Python, SQL, Excel, and Power BI.

## 📊 Project Overview
This project analyzes the Superstore sales dataset (~9,800 orders) to uncover revenue trends, regional performance, category insights, and shipping patterns. The workflow covers data cleaning, database storage, SQL analysis, and dashboard visualization.

## 🛠️ Tools Used
- **Python (pandas)** — data cleaning and feature engineering
- **MySQL** — data storage and SQL analysis
- **Excel** — pivot tables and quick visual summaries
- **Power BI** — interactive dashboard

## 📁 Project Structure
dashboard/ → Power BI dashboard (.pbix)
dataset/ → Raw and cleaned data files
notebook/ → Data cleaning notebook (Jupyter)
sql/ → SQL analysis queries

## 🔑 Key Insights
- **Total revenue of $2.26M** across 9,800 orders, with an average order value of $230.77.
- **West region leads in revenue** ($710K, ~31% of total), while South has the lowest revenue ($389K) and fewest orders.
- **Technology drives the highest revenue ($827K) despite the fewest orders** — high value per sale. **Office Supplies has the most orders but the lowest revenue** — high volume, low value per order.
- **Clear seasonality**: sales consistently peak in September and November–December each year, with January–February being the slowest months.
- **Standard Class shipping is used for ~60% of orders** despite having the longest average delivery time (5 days) — suggesting most customers prioritize cost over speed.
- 

## 🚀 How to Reproduce
1. Clean data using the notebook in `/notebook`
2. Load cleaned data into MySQL
3. Run analysis queries from `/sql/queries.sql`
4. Open `/dashboard/sales_dashboard.pbix` in Power BI Desktop to explore the interactive dashboard
