
USE AdventureWorksDW2022;
GO

-- 1. Overall Sales Performance
SELECT
    SUM(SalesAmount) AS TotalSales,
    SUM(TotalProductCost) AS TotalCost,
    SUM(SalesAmount - TotalProductCost) AS TotalProfit,
    COUNT(DISTINCT SalesOrderNumber) AS TotalOrders,
    SUM(OrderQuantity) AS TotalQuantity,
    COUNT(DISTINCT CustomerKey) AS TotalCustomers
FROM dbo.FactInternetSales;


-- 2. Annual Sales Performance and YoY Growth
WITH AnnualSales AS (
    SELECT
        d.CalendarYear,
        SUM(f.SalesAmount) AS TotalSales
    FROM dbo.FactInternetSales f
    JOIN dbo.DimDate d
        ON f.OrderDateKey = d.DateKey
    GROUP BY d.CalendarYear
)
SELECT
    CalendarYear,
    TotalSales,
    LAG(TotalSales) OVER (
        ORDER BY CalendarYear
    ) AS PreviousYearSales,
    TotalSales - LAG(TotalSales) OVER (
        ORDER BY CalendarYear
    ) AS SalesChange,
    100.0 * (
        TotalSales - LAG(TotalSales) OVER (
            ORDER BY CalendarYear
        )
    ) / NULLIF(
        LAG(TotalSales) OVER (
            ORDER BY CalendarYear
        ), 0
    ) AS YoYGrowthPercent
FROM AnnualSales
ORDER BY CalendarYear;


-- 3. Sales and Profit by Product Category
SELECT
    pc.EnglishProductCategoryName AS ProductCategory,
    SUM(f.SalesAmount) AS TotalSales,
    SUM(f.TotalProductCost) AS TotalCost,
    SUM(f.SalesAmount - f.TotalProductCost) AS TotalProfit
FROM dbo.FactInternetSales f
JOIN dbo.DimProduct p
    ON f.ProductKey = p.ProductKey
JOIN dbo.DimProductSubcategory ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN dbo.DimProductCategory pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY TotalSales DESC;


-- 4. Sales by Territory
SELECT
    st.SalesTerritoryRegion,
    SUM(f.SalesAmount) AS TotalSales,
    SUM(f.SalesAmount - f.TotalProductCost) AS TotalProfit
FROM dbo.FactInternetSales f
JOIN dbo.DimSalesTerritory st
    ON f.SalesTerritoryKey = st.SalesTerritoryKey
GROUP BY st.SalesTerritoryRegion
ORDER BY TotalSales DESC;


-- 5. Top 10 Products by Sales
SELECT TOP 10
    p.EnglishProductName,
    SUM(f.SalesAmount) AS TotalSales,
    SUM(f.OrderQuantity) AS TotalQuantity
FROM dbo.FactInternetSales f
JOIN dbo.DimProduct p
    ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalSales DESC;


-- 6. Top 10 Customers by Sales
SELECT TOP 10
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    SUM(f.SalesAmount) AS TotalSales,
    COUNT(DISTINCT f.SalesOrderNumber) AS TotalOrders
FROM dbo.FactInternetSales f
JOIN dbo.DimCustomer c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY TotalSales DESC;
