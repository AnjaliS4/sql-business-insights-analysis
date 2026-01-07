# SQL Business Insights Analysis (AdventureWorks)
## Project Overview
This project uses SQL to analyze the AdventureWorks database and extract meaningful business insights related to customers, sales trends, and products.
The goal of the project is to simulate how a Business/Data Analyst works with real-world relational databases to:
- Answer business questions
- Analyze performance
- Support decision-making using data
This project focuses on writing clean SQL queries, understanding business logic, and translating raw data into actionable insights.

## Dataset
- Database: AdventureWorks2019

- Source:Adventure works

- Schema Used:

  Sales.Customer
  
  Sales.SalesOrderHeader
  
  Sales.SalesOrderDetail
  
  Production.Product
  
  Production.ProductSubcategory
  
  Production.ProductCategory

## Business Questions Answered
### Customer-Centric Analysis
- How much total revenue has each customer generated?

- What is the average order value per customer?

- Which customers have never placed an order?

### Time-Based Analysis
- How do sales change month over month?

- What are the monthly sales trends over time?

### Product-Centric Analysis
- What are the top 5 products by revenue in each product category?

- Which products are missing a category or subcategory?

## Tools & Skills Used
  SQL Server
  
  T-SQL
  
  JOINs
  
  Aggregate functions
  
  Date functions
  
  CTEs (Common Table Expressions)
  
  Window functions
  
  Data validation & NULL handling

## Business-oriented data analysis
📁 Project Structure
SQL-Business-Insights-Analysis/ │ ├── sql/ │ ├── customer_analysis.sql │ ├── time_analysis.sql │ └── product_analysis.sql │ ├── insights/ │ └── business_insights.md │ ├── screenshots/ │ └── (query outputs / visuals) │ └── README.md

### How to Run the Project
- Install SQL Server and SQL Server Management Studio (SSMS)

- Restore or connect to the AdventureWorks2019 database

- Open the .sql files inside the sql/ folder

- Run queries section by section to view results

## Future Improvements
- Build a dashboard in Power BI or Excel using these queries

- Add advanced window functions for deeper analysis

- Perform customer segmentation

- Apply the same analysis to real banking data

## Author
Anjali Simkhada
