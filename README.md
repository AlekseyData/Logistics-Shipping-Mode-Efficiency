## 📌 Project Overview
This portfolio project demonstrates SQL data analysis using a retail e-commerce dataset containing over 9,800 transactional records. The goal is to extract operational and strategic business insights concerning product performance, delivery methods, customer loyalty, and regional market distribution.
The analysis progresses from basic data manipulation to advanced analytical techniques, showcasing the practical application of relational database concepts in a business environment.

## 🛠️ Tech Stack & SQL Architecture
* **Database Engine:** SQLite
* **Core Concepts Applied:**
  * Multi-level Data Aggregation (`SUM`, `COUNT`, `ROUND`)
  * Data Filtering & Grouping (`GROUP BY`, `ORDER BY`, `LIMIT`)
  * **Common Table Expressions (CTEs)** for modular, readable query design
  * **Analytical Window Functions** (`RANK() OVER()`) for localized partitioning and dynamic ranking

## 🔍 Database Schema & Data Attributes
The project processes a `train` table structured around key transactional variables:
* **Order Tracking:** `Order ID`, `Ship Mode`
* **Customer Dimensions:** `Customer ID`, `Customer Name`
* **Geographic Attributes:** `Region`
* **Product Classification:** `Category`, `Sub-Category`
* **Financial Metrics:** `Sales`

 📊 Business Queries & Insights

### 1. Product Performance: Top 5 Sub-Categories by Revenue
* **Business Objective:** Identify the primary drivers of sales revenue across all product segments to optimize inventory procurement.
* **SQL Techniques Utilized:** Aggregation, Grouping, Descriptive Sorting.

### 2. Logistics Optimization: Popularity & Scale of Shipping Modes
* **Business Objective:** Evaluate the volume distribution and revenue contribution across different shipping options to assist supply chain and courier allocation.
* **SQL Techniques Utilized:** Multi-metric Grouping, Distinct Counts.

### 3. Customer Analytics: High-Value Loyal Client Identification (RFM-Basics)
* **Business Objective:** Isolate high-frequency, top-spending customers (who completed $\ge 10$ separate orders) for dedicated customer retention and loyalty programs.
* **SQL Techniques Utilized:** Common Table Expressions (CTEs), Sub-query Isolation, Table Aggregations.

### 4. Regional Market Penetration: Dynamic Ranking via Window Functions
* **Business Objective:** Rank product categories locally within each geographical territory to identify regional demand variance and align targeted marketing budgets.
* **SQL Techniques Utilized:** Window Functions (`RANK() OVER`), Table Partitioning, Multi-stage CTEs.
