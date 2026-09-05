# RMA Return Analysis — SQL Data Analysis

## Overview

This project analyzes product return data using MySQL and SQL. The analysis examines returned products by state and calculates the percentage of total returns represented by each product type.

The goal of the analysis is to identify patterns in product returns that could help a product manager determine which geographic areas and products may require additional investigation.

## Technologies Used

- MySQL
- SQL
- Relational Database Queries
- INNER JOIN
- GROUP BY
- COUNT()
- Subqueries
- Aggregate Functions
- Data Analysis

## Analysis Performed

### 1. Returns by State

The first analysis joins the Customers, Orders, and RMA tables to determine the number of returned products associated with each state.

The results were grouped by state and sorted from the highest number of returns to the lowest.

Massachusetts had the highest number of returned products with 972 returns. Arkansas followed with 844 returns, while Oregon had 840 returns.

### 2. Returns by Product Type

The second analysis joins RMA records with Orders and calculates the percentage of total RMA records associated with each product.

The results were grouped by SKU and product description and sorted by percentage in descending order.

The Basic Switch 10/100/1000 BaseT 48 port represented the largest percentage of returns at approximately 22.05%.

## SQL Concepts Demonstrated

This project demonstrates the use of:

- SELECT statements
- INNER JOIN
- COUNT()
- GROUP BY
- ORDER BY
- Aggregate functions
- Subqueries
- Calculated fields
- Aliases
- Relational database analysis

## Key Findings

The analysis identified differences in return volume between states and products.

Massachusetts had the highest number of returned products in the state-level analysis. The Basic Switch 10/100/1000 BaseT 48 port represented the largest share of the returned products in the product-level analysis.

These results provide useful starting points for identifying products and locations that may deserve additional investigation.

## Data Limitations

The number of returns alone does not necessarily represent the actual return rate. A state with more customers or a product with higher sales volume could naturally have more returns.

The dataset also does not provide enough information to determine why products were returned or when the returns occurred.

A more complete analysis would compare returns against total units sold, examine return reasons, and compare return rates across different time periods.

## Future Improvements

Future improvements could include:

- Comparing returns against total sales
- Analyzing return reasons
- Examining trends over time
- Creating data visualizations
- Connecting the analysis to Python
- Automating the reporting process
