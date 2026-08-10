📊 Supply Chain Analytics Dashboard
📌 Project Overview

This project presents an end-to-end Supply Chain Analytics solution developed using PostgreSQL, SQL, Power BI and DAX.

The objective was to analyze a fashion and beauty company's supply chain operations and transform raw operational data into actionable business insights across products, inventory, suppliers, logistics and quality.

The project follows a complete analytics workflow:

Raw Supply Chain Data
        ↓
Data Understanding
        ↓
Data Cleaning & Validation
        ↓
Relational Data Modeling
        ↓
SQL Business Analysis
        ↓
Power BI Data Integration
        ↓
DAX Measures & KPIs
        ↓
Interactive Dashboard
        ↓
Business Insights & Recommendations
------------------------------------------------------------------------
🎯 Business Objectives
The analysis focuses on answering key supply chain questions:

Which product categories generate the highest revenue?
Which products contribute most to sales?
How efficiently is inventory being utilized?
What is the overall inventory turnover?
Which suppliers have the longest lead times?
Which suppliers generate the highest revenue?
How do shipping carriers compare in terms of cost?
Which transportation modes have higher shipping times and costs?
What is the overall product availability rate?
Where are quality issues occurring?
Which suppliers or logistics channels may require operational improvement?
--------------------------------------------------------------------------
🗂️ Dataset
The dataset contains supply chain information from a Fashion & Beauty startup dealing with makeup products.

Major attributes include:
Product Type
SKU
Price
Product Availability
Products Sold
Revenue Generated
Customer Demographics
Stock Levels
Order Quantities
Supplier Information
Supplier Lead Time
Manufacturing Lead Time
Manufacturing Costs
Shipping Times
Shipping Costs
Shipping Carriers
Transportation Modes
Inspection Results
Defect Rates
Routes
----------------------------------------------------------------------------
| Technology  | Purpose                                                   |
| ------------| --------------------------------------------------------- |
| PostgreSQL  | Database creation, storage and querying                   |
| SQL         | Data cleaning, validation, modeling and business analysis |
| Power BI    | Interactive dashboard development                         |
| DAX         | KPI calculations and analytical measures                  |
| Power Query | Data preparation and transformation                       |
| GitHub      | Project documentation and version-controlled portfolio    |
--------------------------------------------------------------------------------
🧹 1. Data Understanding

The project began by examining the raw dataset and understanding:

Available columns and their business meaning
Numerical and categorical attributes
Product-level information
Inventory-related information
Supplier and manufacturing information
Shipping and logistics information
Quality-related information

The initial exploration helped determine how the raw dataset could be transformed into a structured analytical model.
---------------------------------------------------------------------------------
🧽 2. Data Cleaning & Validation

The raw data was imported into PostgreSQL and systematically checked for data-quality issues.

Cleaning activities included:
Checking for missing values
Identifying duplicate records
Checking data types
Validating numerical ranges
Checking inconsistent values
Separating data into logical business entities
Verifying SKU consistency
Validating supplier information
Checking data integrity between related tables

Numerical fields were validated to ensure values such as:

Prices
Revenue
Stock levels
Order quantities
Lead times
Manufacturing costs
Shipping costs
Defect rates

were within reasonable ranges.
-------------------------------------------------------------------
🏗️ 3. Data Modeling

The raw dataset was transformed into a relational structure in PostgreSQL.

The final model separates information into logical tables such as:
                 ┌───────────────┐
                 │    Products   │
                 │      SKU      │
                 └───────┬───────┘
                         │
          ┌──────────────┼──────────────┐
          │              │              │
          ▼              ▼              ▼
    ┌───────────┐ ┌──────────────┐ ┌───────────┐
    │ Inventory │ │Manufacturing │ │  Quality  │
    └───────────┘ └──────────────┘ └───────────┘
                         │
                         ▼
                  ┌────────────┐
                  │  Shipping  │
                  └────────────┘
Data modeling concepts implemented:
Primary Keys
Foreign Keys
One-to-many relationships
Referential integrity
Logical separation of business entities
Relational data modeling

The model was subsequently connected to Power BI for analytical reporting.
------------------------------------------------------------------------------

🔎 4. SQL Business Analysis

SQL was used to answer business questions from the cleaned and structured data.

The analysis covered areas such as:

Product Analysis
Revenue by product type
Product sales performance
Product-level revenue
Products performing above average revenue
Inventory Analysis
Stock levels
Product availability
Order quantities
Inventory efficiency
Inventory turnover
Supplier Analysis
Supplier revenue
Supplier lead times
Supplier performance comparison
Manufacturing Analysis
Manufacturing costs
Manufacturing lead times
Production volumes
Logistics Analysis
Shipping costs
Shipping times
Shipping carrier performance
Transportation mode comparison
Quality Analysis
Inspection results
Defect rates
Quality performance

The SQL scripts used for the analysis are available directly in this repository.
-------------------------------------------------------------------------------------
📊 5. Power BI Dashboard

The cleaned and modeled data was connected to Power BI to create an interactive analytical dashboard.

The dashboard consists of three pages, each designed for a specific analytical perspective.

Page 1 — Executive Overview

Provides a high-level overview of the supply chain.

Key KPIs
Total Revenue
Products Sold
Inventory Turnover
Average Supplier Lead Time
Product Availability Rate
Average Defect Rate
Visual analysis
Revenue by Product Type
Revenue by Supplier
Revenue vs Manufacturing Cost
Lead Time Breakdown
Interactive filtering by supplier, product type, inspection result and transportation-related attributes

This page is designed for management-level monitoring and quick identification of potential supply chain issues.

Page 2 — Inventory & Product Analysis

Focuses on product performance and inventory efficiency.

Analysis includes:
Total Stock
Products Sold
Inventory Turnover
Product Availability Rate
Stock-to-Sales Ratio
Total Revenue by Product Type
Total Stock by Product Type
Products Sold by SKU
Revenue by Product Type
SKU-level performance

This page helps identify:

High-performing products
Products with high sales volumes
Inventory-heavy products
Potential stock availability issues
Product categories contributing most to revenue

Page 3 — Supplier, Logistics & Quality Analysis

Focuses on supplier performance, logistics efficiency and product quality.

KPIs
Average Supplier Lead Time
Average Shipping Time
Average Shipping Cost
Average Defect Rate
Analysis includes:
Supplier Lead Time Comparison
Shipping Cost by Carrier
Shipping Time by Transportation Mode
Shipping Cost by Transportation Mode
Supplier-level operational metrics
Defect rate analysis

This page helps identify potential:

Supplier bottlenecks
Logistics inefficiencies
High-cost shipping channels
Long transportation times
Quality issues
--------------------------------------------------------------------------------------

📐 6. DAX & KPI Development

DAX measures were created in Power BI to calculate the major business KPIs dynamically.

Examples include:
Total Revenue
Products Sold
Total Stock
Inventory Turnover
Average Supplier Lead Time
Average Shipping Time
Average Shipping Cost
Product Availability Rate
Average Defect Rate
Revenue per Unit
Stock-to-Sales Ratio

The measures were formatted appropriately and designed to respond dynamically to dashboard filters and slicers.
----------------------------------------------------------------------------------------------------------------
🎛️ 7. Interactive Dashboard Features

The Power BI dashboard includes interactive filtering and analysis capabilities.

Users can filter the analysis based on dimensions such as:

Product Type
Supplier
Inspection Result
Shipping Carrier
Transportation Mode

The dashboard visuals and KPI cards update dynamically based on the selected filters.
------------------------------------------------------------------------------------------------
💡 Key Business Insights

The dashboard enables several important observations:

Product Performance

Different product categories contribute differently to overall revenue, allowing management to identify high-performing product categories.

Inventory Efficiency

Inventory turnover and stock-to-sales metrics provide visibility into how efficiently inventory is being utilized.

Supplier Performance

Supplier lead-time comparisons help identify suppliers that may create replenishment delays.

Logistics

Shipping cost and shipping-time analysis allows transportation channels and carriers to be compared from both cost and efficiency perspectives.

Quality

Defect-rate analysis provides visibility into potential quality issues across the supply chain.
---------------------------------------------------------------------------------------------------
📈 Business Recommendations

Based on the analytical framework, management can:

Monitor suppliers with consistently high lead times to reduce replenishment delays.
Evaluate high-cost shipping carriers and transportation modes and investigate opportunities for optimization.
Prioritize high-performing product categories when making inventory and sales decisions.
Monitor inventory turnover to identify inefficient inventory utilization.
Track product availability to reduce potential stock-out situations.
Investigate suppliers or processes with higher defect rates to improve overall product quality.
Use the dashboard for continuous monitoring rather than relying only on periodic analysis.
------------------------------------------------------------------------------------------
🗃️ SQL Files

The SQL analysis is organized according to the project workflow:

Database Setup

Supply_chain_DB.sql

Contains the database and table setup used for the project.

Data Understanding

supply_chain_data_understanding.sql

Contains initial exploration and understanding of the dataset.

Data Cleaning

supply_chain_data_cleaning.sql

Contains data-quality checks, cleaning and validation procedures.

Data Modeling

supply_chain_data_modeling.sql

Contains the relational data-modeling work, constraints and relationships.
----------------------------------------------------------------------------------
🧩 Data Model

The Power BI model was designed to provide a structured analytical layer for the dashboard.

The model separates product, inventory, manufacturing, quality and shipping information while maintaining relationships through SKU and other relevant business keys.
------------------------------------------------------------------------------------
🚀 Project Outcome

This project demonstrates an end-to-end Data Analyst workflow:

SQL Database
     ↓
Data Cleaning
     ↓
Data Validation
     ↓
Data Modeling
     ↓
Business Analysis
     ↓
DAX
     ↓
Power BI
     ↓
Interactive Reporting
     ↓
Business Insights

Rather than focusing only on visualization, the project combines data engineering fundamentals, SQL analytics, dimensional/relational modeling, DAX and business intelligence to convert raw supply chain data into an actionable reporting solution.
------------------------------------------------------------------------------------
⭐ Portfolio Note

This project was developed as a practical portfolio project to demonstrate the complete process of taking a raw operational dataset and transforming it into a structured, validated and interactive business intelligence solution.
