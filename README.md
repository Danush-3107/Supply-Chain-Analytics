# Supply Chain Analytics Dashboard

End-to-end Supply Chain Analytics project using PostgreSQL, SQL, Power BI and DAX.

## Project Overview

This project presents an end-to-end Supply Chain Analytics solution developed using PostgreSQL, SQL, Power BI and DAX.

The objective of the project is to analyze the supply chain operations of a Fashion and Beauty startup and transform raw operational data into actionable business insights.

The analysis covers five major areas:

- Product performance
- Inventory management
- Supplier performance
- Logistics and transportation
- Product quality

The project follows a complete analytics workflow, starting from raw data understanding and database development, followed by data cleaning, validation, relational data modeling, SQL business analysis and finally interactive Power BI reporting.

---

## Business Objectives

The project was developed to answer important supply chain and business questions, including:

- Which product categories generate the highest revenue?
- Which products contribute most to overall sales?
- How efficiently is inventory being utilized?
- What is the overall inventory turnover?
- Which suppliers have the longest lead times?
- How do suppliers compare in terms of operational performance?
- Which shipping carriers have higher average shipping costs?
- Which transportation modes are more efficient?
- What is the overall product availability rate?
- What is the average defect rate?
- Where are potential supply chain, logistics and quality issues occurring?

---

## Dataset

The dataset contains supply chain information from a Fashion and Beauty startup dealing with makeup products.

The dataset includes information related to:

- Product Type
- SKU
- Price
- Product Availability
- Products Sold
- Revenue Generated
- Customer Demographics
- Stock Levels
- Order Quantities
- Supplier Information
- Supplier Lead Time
- Manufacturing Lead Time
- Manufacturing Costs
- Shipping Times
- Shipping Costs
- Shipping Carriers
- Transportation Modes
- Routes
- Inspection Results
- Defect Rates

The original dataset was sourced from Kaggle.

The original dataset license and redistribution terms should be respected when sharing the raw dataset publicly.

---

## Tools and Technologies

| Tool / Technology | Purpose |
|---|---|
| PostgreSQL | Database creation, storage and querying |
| SQL | Data cleaning, validation, modeling and business analysis |
| Power BI | Interactive dashboard development |
| DAX | KPI calculations and analytical measures |
| Power Query | Data preparation and transformation |
| GitHub | Project documentation and portfolio presentation |

---

## Project Workflow

The project was completed through the following stages:

### 1. Data Understanding

The raw dataset was first explored to understand its structure, columns, data types and business meaning.

The analysis focused on identifying information related to products, inventory, suppliers, manufacturing, shipping, transportation and quality.

### 2. Database Development

The raw data was imported into PostgreSQL and structured into tables for further analysis.

The database was used as the primary environment for SQL-based data preparation, validation and analysis.

### 3. Data Cleaning and Validation

The data was checked for common data-quality issues such as:

- Missing values
- Duplicate records
- Incorrect data types
- Invalid numerical values
- Inconsistent values
- Invalid SKU relationships
- Supplier data inconsistencies

Numerical fields such as price, revenue, stock levels, lead times, manufacturing costs, shipping costs and defect rates were also validated.

### 4. Data Modeling

The raw dataset was transformed into logically separated business tables.

The model includes information related to:

- Products
- Inventory
- Manufacturing
- Quality
- Shipping

Primary keys, foreign keys, constraints and relationships were implemented to maintain data integrity and create a structured analytical model.

### 5. SQL Business Analysis

SQL was used to answer business questions and generate analytical results.

The analysis included:

- Revenue analysis
- Product performance analysis
- Inventory analysis
- Supplier analysis
- Manufacturing analysis
- Shipping and logistics analysis
- Quality analysis
- Products above average revenue
- Product-level performance analysis

### 6. Power BI Development

The cleaned and modeled data was connected to Power BI.

A three-page interactive dashboard was developed to present the analysis in a business-friendly format.

### 7. DAX Measures and KPIs

DAX measures were created to calculate important supply chain KPIs dynamically.

The measures include:

- Total Revenue
- Products Sold
- Total Stock
- Inventory Turnover
- Average Supplier Lead Time
- Average Shipping Time
- Average Shipping Cost
- Product Availability Rate
- Average Defect Rate
- Stock-to-Sales Ratio
- Revenue per Unit

### 8. Interactive Reporting

Power BI slicers, filters, KPI cards, tables, charts, conditional formatting and Top N analysis were used to create an interactive reporting experience.

Users can filter and explore the data based on relevant business dimensions such as product type, supplier, shipping carrier, transportation mode and inspection result.

---

# Power BI Dashboard

The Power BI report contains three analytical pages.

## Page 1 — Executive Overview

The Executive Overview provides a high-level view of the overall supply chain performance.

### Key KPIs

- Total Revenue
- Products Sold
- Inventory Turnover
- Average Supplier Lead Time
- Product Availability Rate
- Average Defect Rate

### Main Analysis

The page includes analysis of:

- Revenue by Product Type
- Revenue by Supplier
- Revenue compared with Manufacturing Cost
- Lead Time
- Product Availability
- Defect Rate

This page is designed to provide management with a quick overview of overall supply chain performance.

### Dashboard Preview

![Executive Overview](screenshots/executive-overview.png)

---

## Page 2 — Inventory and Product Analysis

The second page focuses on inventory efficiency and product-level performance.

### Key Analysis

- Total Stock
- Products Sold
- Inventory Turnover
- Product Availability Rate
- Stock-to-Sales Ratio
- Stock Levels by Product Type
- Products Sold by SKU
- Revenue by Product Type
- Top 10 Products by Sales
- Product-level inventory performance

This page helps identify high-performing products, inventory-heavy products, product availability issues and differences in inventory efficiency.

### Dashboard Preview

![Inventory and Product Analysis](screenshots/inventory-product-analysis.png)

---

## Page 3 — Supplier, Logistics and Quality Analysis

The third page focuses on supplier performance, logistics efficiency and product quality.

### Key KPIs

- Average Supplier Lead Time
- Average Shipping Time
- Average Shipping Cost
- Average Defect Rate

### Main Analysis

The page includes:

- Supplier Lead Time Comparison
- Shipping Cost by Carrier
- Shipping Time by Transportation Mode
- Shipping Cost by Transportation Mode
- Supplier Performance Scorecard
- Defect Rate Analysis

This page helps identify potential supplier bottlenecks, logistics inefficiencies, high-cost shipping channels and quality issues.

### Dashboard Preview

![Supplier, Logistics and Quality Analysis](screenshots/supplier-logistics-quality.png)

---

# SQL Analysis

The SQL work is organized into separate scripts according to the project workflow.

## Database Setup

**File:** `Supply_chain_DB.sql`

Contains the database and table creation required for the project.

## Data Understanding

**File:** `supply_chain_data_understanding.sql`

Contains the initial exploration and understanding of the dataset.

## Data Cleaning

**File:** `supply_chain_data_cleaning.sql`

Contains data-quality checks, cleaning procedures and validation queries.

## Data Modeling

**File:** `supply_chain_data_modeling.sql`

Contains the relational data-modeling work, constraints, primary keys, foreign keys and relationships.

## Business Analysis

**File:** `supply_chain_business_analysis.sql`

Contains SQL queries used to answer business questions and generate analytical insights.

All SQL scripts can be opened directly from this repository to review the implementation.

---

# Data Model

The final Power BI data model separates the major business entities into structured tables.

The model contains information related to:

- Products
- Inventory
- Manufacturing
- Quality
- Shipping

Relationships between the tables were created using relevant business keys such as SKU.

The model also incorporates the database relationships and integrity rules established during the PostgreSQL modeling phase.

### Data Model Preview

![Power BI Data Model](documentation/data-model.png)

---

# Key Supply Chain Metrics

## Inventory Turnover

Measures how efficiently inventory is being utilized relative to product sales.

## Product Availability Rate

Measures the average availability of products within the dataset.

## Supplier Lead Time

Measures the average time required for suppliers to provide products.

## Shipping Time

Measures the average time required for shipments.

## Shipping Cost

Measures the average cost associated with product shipments.

## Defect Rate

Measures the percentage of products associated with quality defects.

## Stock-to-Sales Ratio

Provides a comparison between available inventory and product sales.

---

# Key Business Insights

The dashboard enables analysis of several important supply chain patterns.

### Product Performance

Product categories contribute differently to total revenue and sales, allowing high-performing categories to be identified.

### Inventory Efficiency

Inventory turnover and stock-to-sales analysis provide visibility into how effectively inventory is being utilized.

### Supplier Performance

Comparing supplier lead times helps identify suppliers that may create longer replenishment cycles.

### Logistics Performance

Shipping cost and shipping-time comparisons help evaluate different carriers and transportation modes from both cost and efficiency perspectives.

### Quality Performance

Defect-rate analysis provides visibility into potential quality issues across suppliers and inspection results.

---

# Business Recommendations

Based on the analytical framework, the business can:

1. Monitor suppliers with consistently high lead times to reduce potential replenishment delays.

2. Evaluate high-cost shipping carriers and transportation modes to identify logistics optimization opportunities.

3. Prioritize high-performing product categories when making inventory and sales decisions.

4. Monitor inventory turnover to identify inefficient inventory utilization.

5. Track product availability to reduce potential stock-out situations.

6. Investigate suppliers or operational processes associated with higher defect rates.

7. Use the Power BI dashboard for continuous supply chain monitoring and decision-making.

---

# Repository Structure

The repository is organized as follows:

- `README.md` — Project documentation and overview
- `Supply_chain_DB.sql` — Database setup
- `supply_chain_data_understanding.sql` — Initial data exploration
- `supply_chain_data_cleaning.sql` — Data cleaning and validation
- `supply_chain_data_modeling.sql` — Data modeling and database relationships
- `supply_chain_business_analysis.sql` — SQL business analysis
- `inventory-product-analysis.png` , `supplier-logistics-quality.png` , `Executive-Overview.png`  — Power BI dashboard screenshots
- `DATA MODEL.png` — Data model documentation
- `Supply_chain_Dashboard.pbix` — Power BI report file

---

# Project Outcome

This project demonstrates an end-to-end Data Analyst and Business Intelligence workflow.

The project combines:

- PostgreSQL database development
- SQL querying
- Data cleaning
- Data validation
- Relational data modeling
- Primary and foreign keys
- Business analysis
- Power BI data modeling
- DAX measures
- KPI development
- Interactive dashboard design
- Data visualization
- Business insights and recommendations

The overall objective was to transform raw supply chain data into a structured analytical solution that can support data-driven operational and management decisions.

---

# Author

**Danush Sathish Kumar**

MSc Data Science | Data Analytics | Business Intelligence

### Skills Demonstrated

`SQL` · `PostgreSQL` · `Power BI` · `DAX` · `Data Modeling` · `Data Cleaning` · `Business Analysis` · `Data Visualization`

---

## Portfolio Project

This project was developed as a practical portfolio project to demonstrate the complete process of transforming raw operational data into a structured, validated and interactive Business Intelligence solution.
