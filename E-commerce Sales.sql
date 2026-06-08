--Top 5 Most Profitable Product Categories--

SELECT 
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2) AS Total_Revenue
FROM train
GROUP BY Category, "Sub-Category"
ORDER BY Total_Revenue DESC
LIMIT 5;

--Percentage of Orders with Delayed Delivery--
SELECT 
    "Ship Mode",
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue
FROM train
GROUP BY "Ship Mode"
ORDER BY Total_Orders DESC;

--Customer Loyalty Analysis--
WITH CustomerStats AS (
    SELECT 
        "Customer ID",
        "Customer Name",
        COUNT(DISTINCT "Order ID") AS Total_Purchases,
        SUM(Sales) AS Lifetime_Value
    FROM train
    GROUP BY "Customer ID", "Customer Name"
)
SELECT 
    "Customer Name",
    Total_Purchases,
    ROUND(Lifetime_Value, 2) AS Total_Spent
FROM CustomerStats
WHERE Total_Purchases >= 10 --loyal clients
ORDER BY Total_Spent DESC
LIMIT 10;

--Monthly Sales Dynamics--
WITH RegionSales AS (
    SELECT 
        Region,
        Category,
        SUM(Sales) AS Total_Sales
    FROM train
    GROUP BY Region, Category
)
SELECT 
    Region,
    Category,
    ROUND(Total_Sales, 2) AS Total_Sales,
    RANK() OVER(PARTITION BY Region ORDER BY Total_Sales DESC) as Rank_In_Region
FROM RegionSales;