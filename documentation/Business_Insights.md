# AdventureWorks Business Insights

## 1. Executive Summary

This project analyzes sales performance, profitability, product performance, regional sales, and customer purchasing behavior using the AdventureWorksDW2022 dataset.

The business generated approximately **$29.36 million in total sales** and **$12.08 million in total profit** across 27,659 orders and 18,484 purchasing customers.

The analysis identified Bikes as the dominant product category, Australia as the highest-performing sales territory, and Mountain-200 variations as leading individual products by revenue.

Additional validation identified incomplete reporting periods in 2010 and 2014 and low transaction volumes in several sales territories.

These findings demonstrate how SQL Server and Power BI can transform transactional data into actionable business insights.

---

## 2. Overall Sales Performance

The overall sales analysis produced the following results:

| KPI | Result |
|---|---:|
| Total Sales | $29,358,677.22 |
| Total Cost | $17,277,793.58 |
| Total Profit | $12,080,883.65 |
| Total Orders | 27,659 |
| Total Quantity Sold | 60,398 |
| Purchasing Customers | 18,484 |
| Profit Margin | 41.15% |
| Average Order Value | $1,061.47 |

### Key Findings

- The business generated approximately $29.36 million in total sales.
- Total profit reached approximately $12.08 million.
- The overall profit margin was approximately 41.15%.
- The business recorded 27,659 orders from 18,484 purchasing customers.
- Average order value was approximately $1,061.47.

### Business Implications

- The positive profit margin indicates that sales generated substantial profit after product costs.
- Average order value provides a useful metric for monitoring customer spending.
- These KPIs establish a baseline for evaluating future sales and profitability performance.

---

## 3. Annual Sales Performance

Annual sales analysis revealed significant changes in revenue across the reporting period.

| Year | Total Sales | Sales Change | YoY Growth |
|---|---:|---:|---:|
| 2010 | $43,421.04 | — | — |
| 2011 | $7,075,525.93 | $7,032,104.89 | 16,195.16% |
| 2012 | $5,842,485.20 | -$1,233,040.73 | -17.43% |
| 2013 | $16,351,550.34 | $10,509,065.14 | 179.87% |
| 2014 | $45,694.72 | -$16,305,855.62 | -99.72% |

### Reporting Period Validation

A review of the first and last order dates for each year confirmed:

| Year | First Order Date | Last Order Date | Orders | Reporting Period |
|---|---|---|---:|---|
| 2010 | Dec 29, 2010 | Dec 31, 2010 | 14 | Partial year |
| 2011 | Jan 1, 2011 | Dec 31, 2011 | 2,216 | Full year |
| 2012 | Jan 1, 2012 | Dec 31, 2012 | 3,269 | Full year |
| 2013 | Jan 1, 2013 | Dec 31, 2013 | 21,289 | Full year |
| 2014 | Jan 1, 2014 | Jan 28, 2014 | 871 | Partial year |

### Key Findings

- 2013 was the strongest complete year, generating approximately $16.35 million in sales.
- Sales declined by approximately 17.43% in 2012 compared with 2011.
- Sales increased significantly in 2013, with year-over-year growth of approximately 179.87%.
- 2010 contains only three days of sales data, from December 29 through December 31.
- 2014 contains sales data only through January 28.

### Business Implications

- 2013 recorded the highest sales among the complete calendar years in the available dataset.
- The decline in 2012 compared with 2011 may warrant further investigation.
- Sales increased substantially in 2013.
- 2010 and 2014 are partial reporting periods and should not be compared directly with complete calendar years.
- The unusually high 2011 growth percentage is influenced by the very small 2010 reporting period.

---

## 4. Product Category Performance

The product category analysis compared total sales, costs, and profit.

| Product Category | Total Sales | Total Cost | Total Profit |
|---|---:|---:|---:|
| Bikes | $28,318,144.65 | $16,812,348.15 | $11,505,796.50 |
| Accessories | $700,759.96 | $262,085.39 | $438,674.57 |
| Clothing | $339,772.61 | $203,360.03 | $136,412.58 |

### Key Findings

- Bikes generated approximately $28.32 million in sales and $11.51 million in profit.
- Bikes accounted for approximately 96.46% of total sales.
- Accessories generated approximately $700,759.96 in sales.
- Clothing generated approximately $339,772.61 in sales.
- All three product categories generated positive profit.

### Business Implications

- Bikes are the primary revenue and profit driver and should remain a major focus of sales and inventory planning.
- Accessories and Clothing contribute smaller amounts of revenue but also generate positive profit.
- Cross-selling accessories and clothing alongside bicycle purchases could provide opportunities to increase revenue.

---

## 5. Regional Sales Performance

Regional analysis identified differences in sales and profitability across the reported territories.

| Territory | Total Sales | Total Profit |
|---|---:|---:|
| Australia | $9,061,000.58 | $3,685,855.08 |
| Southwest | $5,718,150.81 | $2,371,763.40 |
| Northwest | $3,649,866.55 | $1,519,631.30 |
| United Kingdom | $3,391,712.21 | $1,390,490.78 |
| Germany | $2,894,312.34 | $1,187,370.77 |
| France | $2,644,017.71 | $1,086,264.72 |
| Canada | $1,977,844.86 | $829,921.50 |
| Southeast | $12,238.85 | $5,332.43 |
| Northeast | $6,532.47 | $2,902.76 |
| Central | $3,000.83 | $1,350.92 |

### Regional Order Volume

| Territory | Total Orders |
|---|---:|
| Australia | 6,718 |
| Southwest | 5,473 |
| Northwest | 4,058 |
| Canada | 3,375 |
| United Kingdom | 3,031 |
| Germany | 2,484 |
| France | 2,484 |
| Southeast | 17 |
| Northeast | 10 |
| Central | 9 |

### Southeast Sales Validation

A year-by-year review of Southeast sales showed:

| Year | Orders | Total Sales |
|---|---:|---:|
| 2012 | 3 | $3,637.40 |
| 2013 | 12 | $8,526.47 |
| 2014 | 2 | $74.98 |
| **Total** | **17** | **$12,238.85** |

### Key Findings

- Australia was the highest-performing territory, generating approximately $9.06 million in sales.
- Southwest ranked second with approximately $5.72 million in sales.
- Northwest ranked third with approximately $3.65 million in sales.
- The United Kingdom, Germany, and France also contributed substantially to total sales.
- Southeast recorded only 17 orders across the available data.
- Northeast and Central also recorded very low order volumes, with 10 and 9 orders respectively.
- Most Southeast activity occurred in 2013, which recorded 12 orders.

### Business Implications

- Australia represents an important market for maintaining and growing revenue.
- Strong-performing territories may provide opportunities to identify successful sales strategies that can be applied elsewhere.
- Southeast, Northeast, and Central have substantially fewer recorded orders than the leading territories.
- Further investigation of regional sales coverage and transaction volume could help explain these differences.
- The analysis establishes low transaction activity in these territories but does not establish the underlying reasons.

---

## 6. Top-Selling Products

Product-level analysis identified the top 10 products by total sales.

| Product | Total Sales | Quantity Sold |
|---|---:|---:|
| Mountain-200 Black, 46 | $1,373,469.55 | 620 |
| Mountain-200 Black, 42 | $1,363,142.09 | 614 |
| Mountain-200 Silver, 38 | $1,339,462.79 | 596 |
| Mountain-200 Silver, 46 | $1,301,100.10 | 580 |
| Mountain-200 Black, 38 | $1,294,866.14 | 582 |
| Mountain-200 Silver, 42 | $1,257,434.57 | 560 |
| Road-150 Red, 48 | $1,205,876.99 | 337 |
| Road-150 Red, 62 | $1,202,298.72 | 336 |
| Road-150 Red, 52 | $1,080,637.54 | 302 |
| Road-150 Red, 56 | $1,055,589.65 | 295 |

### Key Findings

- Mountain-200 Black, size 46, was the highest-selling product, generating approximately $1.37 million in sales from 620 units.
- Six of the top 10 products belong to the Mountain-200 product family.
- Four of the top 10 products are Road-150 Red variations.
- Mountain-200 products demonstrate strong sales across different sizes and colors.
- Road-150 Red products also contribute significantly to revenue.

### Business Implications

- Mountain-200 products are important revenue drivers and should receive attention in inventory and product planning.
- Consistent performance across multiple variations suggests demand for different sizes and colors.
- Road-150 products also represent an important sales opportunity.
- Further product-level profitability analysis could help identify the most profitable individual products.

---

## 7. Customer Sales Analysis

Customer-level analysis identified the top 10 customers by total sales.

| Customer | Total Sales | Orders |
|---|---:|---:|
| Nichole Nara | $13,295.38 | 5 |
| Kaitlyn Henderson | $13,294.27 | 5 |
| Margaret He | $13,269.27 | 5 |
| Randall Dominguez | $13,265.99 | 5 |
| Adriana Gonzalez | $13,242.70 | 5 |
| Rosa Hu | $13,215.65 | 5 |
| Brandi Gill | $13,195.64 | 5 |
| Brad She | $13,173.19 | 5 |
| Francisco Sara | $13,164.64 | 5 |
| Maurice Shan | $12,909.67 | 6 |

### Key Findings

- Nichole Nara generated the highest sales among the top 10 customers, with approximately $13,295.38.
- Kaitlyn Henderson ranked second, generating approximately $13,294.27.
- Nine of the top 10 customers recorded five orders each, while Maurice Shan recorded six orders.
- Sales among these top customers were relatively close, ranging from approximately $12,909.67 to $13,295.38.

### Business Implications

- Understanding high-value customers can help support customer retention and relationship management.
- Customer purchasing patterns can help identify opportunities for repeat purchases and targeted promotions.
- Maurice Shan's higher order count despite lower total sales suggests an opportunity to examine differences in average order value.
- Further analysis of customer lifetime value and purchasing frequency could provide additional insights into customer behavior.

---

## 8. Business Recommendations

Based on the analysis, the following business recommendations can be considered:

### 1. Maintain Focus on Bikes

Bikes account for approximately 96.46% of total sales. Maintaining product availability and monitoring demand for high-performing bicycle models should be a priority.

### 2. Explore Cross-Selling Opportunities

Accessories and Clothing contribute smaller amounts of revenue. Bundling these products with bicycle purchases could help increase average order value.

### 3. Monitor Regional Performance

Australia is the leading territory, while Southeast, Northeast, and Central have much lower recorded order volumes. Reviewing regional sales coverage and transaction activity could help identify opportunities for growth.

### 4. Interpret Annual Sales Trends Carefully

The large sales changes across years highlight the importance of considering reporting-period completeness. Comparisons should focus on complete years when evaluating annual performance.

### 5. Strengthen Customer Retention

Customer-level sales analysis can help identify valuable purchasing customers and support targeted retention and engagement strategies.

### 6. Analyze Product-Level Profitability

Further analysis of individual product costs and margins could help prioritize products that contribute most effectively to profitability.

---

## 9. Conclusion

The AdventureWorks Sales & Customer Analytics project demonstrates how SQL Server and Power BI can be used together to transform a data warehouse into an interactive business reporting solution.

The analysis identified key sales drivers, profitability patterns, regional differences, and customer purchasing behavior.

Validation of annual reporting periods confirmed that 2010 and 2014 contain incomplete year data. Regional validation also showed that Southeast, Northeast, and Central have very low recorded order volumes compared with the leading territories.

These checks strengthen the reliability of the analysis by distinguishing observed results from conclusions that require further investigation.

The findings provide a foundation for data-driven decisions involving product planning, regional performance, customer retention, and sales strategy.

**Technologies Used:** SQL Server 2022, SQL Server Management Studio, Power BI Desktop, DAX, and GitHub.
