# AdventureWorks Data Model

## 1. Overview

The project uses the AdventureWorksDW2022 data warehouse and follows a dimensional modeling approach.

The central fact table is Internet Sales, supported by dimension tables describing customers, products, dates, and sales territories.

## 2. Fact Table

### FactSales

Renamed from `FactInternetSales` in Power BI.

Contains transactional sales information, including:

- SalesOrderNumber
- CustomerKey
- ProductKey
- OrderDateKey
- SalesTerritoryKey
- OrderQuantity
- SalesAmount
- TotalProductCost

The fact table is used to calculate sales, costs, profit, orders, and quantities.

## 3. Dimension Tables

| Table | Purpose |
|---|---|
| DimCustomer | Customer information |
| DimProduct | Product details |
| DimDate | Calendar and time analysis |
| DimTerritory | Sales territory information |
| DimProductCategory | Product category descriptions |
| DimProductSubcategory | Product subcategory descriptions |
| DimGeography | Geographic information associated with customers |

## 4. Relationships

The following relationships are configured in the Power BI model:

| One-side table | One-side column | Many-side table | Many-side column |
|---|---|---|---|
| DimCustomer | CustomerKey | FactSales | CustomerKey |
| DimProduct | ProductKey | FactSales | ProductKey |
| DimDate | DateKey | FactSales | OrderDateKey |
| DimTerritory | SalesTerritoryKey | FactSales | SalesTerritoryKey |
| DimProductCategory | ProductCategoryKey | DimProductSubcategory | ProductCategoryKey |
| DimProductSubcategory | ProductSubcategoryKey | DimProduct | ProductSubcategoryKey |
| DimGeography | GeographyKey | DimCustomer | GeographyKey |

Relationships use one-to-many cardinality, single-direction filtering, and active status.

## 5. Model Design

The model uses a central sales fact table connected to descriptive dimensions.

This structure supports analysis across:

- Time
- Customers
- Products
- Product categories
- Sales territories
- Geography

The active date relationship uses the order date.

## 6. DAX Measures

Key measures include:

- Total Sales
- Total Cost
- Total Profit
- Total Orders
- Total Quantity
- Average Order Value
- Total Customers
- Profit Margin

Time-intelligence measures were also created for previous-year sales and year-over-year performance.

## 7. Customer Full Name

A calculated column was created in `DimCustomer`:

```dax
Full Name =
DimCustomer[FirstName] & " " & DimCustomer[LastName]
```

This column supports customer-level visualizations.
