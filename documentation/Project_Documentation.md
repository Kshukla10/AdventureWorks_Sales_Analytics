# AdventureWorks Sales & Customer Analytics

## 1. Project Overview

This project analyzes sales, profitability, product performance, and customer activity using the AdventureWorksDW2022 sample data warehouse.

The goal is to demonstrate practical Business Intelligence skills, including SQL analysis, data modeling, DAX calculations, and interactive dashboard development in Power BI.

## 2. Business Objectives

- Evaluate overall sales and profitability.
- Monitor order volume and average order value.
- Identify top-performing products and product categories.
- Compare sales performance across sales territories and countries.
- Identify high-value customers and customer purchasing patterns.

## 3. Tools and Technologies

| Tool | Purpose |
|---|---|
| SQL Server 2022 Developer | Database environment |
| SQL Server Management Studio (SSMS) | SQL querying and analysis |
| Power BI Desktop | Data modeling, DAX, and dashboard development |
| DAX | Business calculations and KPIs |
| GitHub | Project version control and portfolio presentation |

## 4. Data Sources

The project uses the AdventureWorksDW2022 sample data warehouse.

Main tables used:

- FactInternetSales
- DimCustomer
- DimProduct
- DimDate
- DimSalesTerritory
- DimProductCategory
- DimProductSubcategory
- DimGeography

## 5. Data Preparation

The data was imported from SQL Server into Power BI using Import mode.

Preparation included:

- Selecting relevant columns.
- Reviewing and assigning appropriate data types.
- Renaming tables for readability.
- Creating relationships between fact and dimension tables.
- Creating a customer full-name column for customer-level analysis.

## 6. Key Performance Indicators

The report includes the following measures:

- Total Sales
- Total Cost
- Total Profit
- Total Orders
- Total Quantity
- Average Order Value
- Total Customers
- Profit Margin

Additional time-intelligence measures were created to calculate previous-year sales, year-over-year change, and year-over-year growth.

## 7. Dashboard Pages

### Executive Sales Overview

Provides a high-level view of sales performance through KPI cards, monthly sales trends, product category performance, and territory performance.

### Product & Regional Performance

Highlights top-selling products, category profitability, sales by territory, and quantity sold by product category.

### Customer Analytics

Analyzes purchasing customers, top customers by sales and orders, and customer sales distribution by country.

## 8. SQL Analysis

A separate SQL analysis script contains queries for:

1. Overall sales performance.
2. Annual sales performance and year-over-year growth.
3. Sales and profit by product category.
4. Sales by territory.
5. Top 10 products by sales.
6. Top 10 customers by sales.

## 9. Deliverables

- Interactive Power BI report.
- SQL analysis script.
- Dashboard screenshots.
- Project documentation.

## 10. Key Skills Demonstrated

- SQL querying and aggregations.
- Joins and common table expressions.
- Window functions.
- Data modeling and relationships.
- DAX measures and calculated columns.
- Power BI dashboard development.
- Business performance analysis.
- Technical documentation and GitHub project presentation.
