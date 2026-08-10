/*BUSINESS ANALYSIS*/

--Executive KPI Dashboard
--KPI 1 – Total Revenue
--Business Question
--How much revenue has the company generated?

SELECT
ROUND(SUM(revenue_generated),2) AS total_revenue
FROM inventory;

-- KPI 2: Total Products Sold

SELECT
SUM(products_sold) AS total_products_sold
FROM inventory;

-- KPI 3: Average Product Price

SELECT
ROUND(AVG(price),2) AS average_price
FROM products;

-- KPI 4: Average Stock Level

SELECT
ROUND(AVG(stock_levels),2) AS average_stock
FROM inventory;

-- KPI 5: Average Supplier Lead Time

SELECT
ROUND(AVG(supplier_lead_time),2) AS average_supplier_lead_time
FROM manufacturing;

-- KPI 6: Average Manufacturing Lead Time

SELECT
ROUND(AVG(manufacturing_lead_time),2) AS average_manufacturing_time
FROM manufacturing;

-- KPI 7: Average Shipping Time

SELECT
ROUND(AVG(shipping_time),2) AS average_shipping_time
FROM shipping;

-- KPI 8: Average Shipping Cost

SELECT
ROUND(AVG(shipping_cost),2) AS average_shipping_cost
FROM shipping;

-- KPI 9: Average Manufacturing Cost

SELECT
ROUND(AVG(manufacturing_cost),2) AS average_manufacturing_cost
FROM manufacturing;

-- KPI 10: Average Defect Rate

SELECT
ROUND(AVG(defect_rate),2) AS average_defect_rate
FROM quality;

--Product Analysis

--Q1 – Revenue by Product Type
SELECT
p.product_type,
ROUND(SUM(i.revenue_generated),2) AS total_revenue
FROM products p
JOIN inventory i
ON p.sku=i.sku
GROUP BY p.product_type
ORDER BY total_revenue DESC;

--Q2 – Top 10 Revenue Generating Products
SELECT
p.sku,
p.product_type,
i.revenue_generated
FROM products p
JOIN inventory i
ON p.sku=i.sku
ORDER BY i.revenue_generated DESC
LIMIT 10;

--Q3 – Highest Selling Products
SELECT
p.sku,
p.product_type,
i.products_sold
FROM products p
JOIN inventory i
ON p.sku=i.sku
ORDER BY i.products_sold DESC
LIMIT 10;

--Q4 – Average Price by Product Type
SELECT
product_type,
ROUND(AVG(price),2) AS average_price
FROM products
GROUP BY product_type
ORDER BY average_price DESC;

--Inventory Analysis
--Q1 – Products with the Highest Stock Levels

-- Inventory Analysis 1: Top 10 Products by Stock Level

SELECT
    p.sku,
    p.product_type,
    i.stock_levels
FROM products p
JOIN inventory i
ON p.sku = i.sku
ORDER BY i.stock_levels DESC
LIMIT 10;

--Q2 – Products with the Lowest Stock Levels
-- Inventory Analysis 2: Lowest Stock Levels

SELECT
    p.sku,
    p.product_type,
    i.stock_levels
FROM products p
JOIN inventory i
ON p.sku = i.sku
ORDER BY i.stock_levels ASC
LIMIT 10;

--Q3 – Estimated Inventory Turnover
-- Inventory Analysis 3: Estimated Inventory Turnover

SELECT
    p.sku,
    p.product_type,
    i.products_sold,
    i.stock_levels,
    ROUND(
        i.products_sold::NUMERIC /
        NULLIF(i.stock_levels,0),
        2
    ) AS inventory_turnover
FROM products p
JOIN inventory i
ON p.sku = i.sku
ORDER BY inventory_turnover DESC NULLS LAST;

--Q4 – Average Stock Level by Product Type
SELECT
    p.product_type,
    ROUND(AVG(i.stock_levels),2) AS average_stock
FROM products p
JOIN inventory i
ON p.sku = i.sku
GROUP BY p.product_type
ORDER BY average_stock DESC;

--Q5 – Revenue per Unit Sold
SELECT
    p.sku,
    p.product_type,
    ROUND(
        i.revenue_generated /
        NULLIF(i.products_sold,0),
        2
    ) AS revenue_per_unit
FROM products p
JOIN inventory i
ON p.sku = i.sku
ORDER BY revenue_per_unit DESC;

--Manufacturing Analysis
--Q1 – Highest Manufacturing Cost
SELECT
    sku,
    supplier_name,
    manufacturing_cost
FROM manufacturing
ORDER BY manufacturing_cost DESC
LIMIT 10;

--Q2 – Average Manufacturing Cost by Supplier
SELECT
    supplier_name,
    ROUND(AVG(manufacturing_cost),2) AS average_cost
FROM manufacturing
GROUP BY supplier_name
ORDER BY average_cost DESC;

--Q3 – Production Volume by Supplier
SELECT
    supplier_name,
    SUM(production_volume) AS total_production
FROM manufacturing
GROUP BY supplier_name
ORDER BY total_production DESC;

--Q4 – Average Manufacturing Lead Time by Supplier
SELECT
    supplier_name,
    ROUND(AVG(manufacturing_lead_time),2) AS avg_manufacturing_time
FROM manufacturing
GROUP BY supplier_name
ORDER BY avg_manufacturing_time DESC;

--Q5 – Highest Production Volume
SELECT
    sku,
    supplier_name,
    production_volume
FROM manufacturing
ORDER BY production_volume DESC
LIMIT 10;

--Shipping Analysis
--Q1 – Average Shipping Cost by Carrier
SELECT
    shipping_carrier,
    ROUND(AVG(shipping_cost),2) AS average_shipping_cost
FROM shipping
GROUP BY shipping_carrier
ORDER BY average_shipping_cost DESC;

--Q2 – Average Shipping Time by Carrier
SELECT
    shipping_carrier,
    ROUND(AVG(shipping_time),2) AS average_shipping_time
FROM shipping
GROUP BY shipping_carrier
ORDER BY average_shipping_time;

--Q3 – Average Shipping Cost by Transportation Mode
SELECT
    transportation_mode,
    ROUND(AVG(shipping_cost),2) AS average_shipping_cost
FROM shipping
GROUP BY transportation_mode
ORDER BY average_shipping_cost DESC;

--Q4 – Shipping Time by Transportation Mode
SELECT
    transportation_mode,
    ROUND(AVG(shipping_time),2) AS average_shipping_time
FROM shipping
GROUP BY transportation_mode
ORDER BY average_shipping_time;

--Q5 – Number of Shipments by Route
SELECT
    route,
    COUNT(*) AS total_shipments
FROM shipping
GROUP BY route
ORDER BY total_shipments DESC;

--Quality Analysis
--Q1 – Average Defect Rate by Supplier

SELECT
    m.supplier_name,
    ROUND(AVG(q.defect_rate),2) AS average_defect_rate
FROM manufacturing m
JOIN quality q
ON m.sku = q.sku
GROUP BY m.supplier_name
ORDER BY average_defect_rate DESC;

--Q2 – Inspection Result Distribution
SELECT
    inspection_result,
    COUNT(*) AS total_products
FROM quality
GROUP BY inspection_result
ORDER BY total_products DESC;

--Q3 – Top 10 Products with Highest Defect Rate
SELECT
    sku,
    defect_rate
FROM quality
ORDER BY defect_rate DESC
LIMIT 10;

--Q4 – Products that Failed Inspection
SELECT
    sku,
    inspection_result,
    defect_rate
FROM quality
WHERE inspection_result = 'Fail'
ORDER BY defect_rate DESC;

--Q5 – Average Defect Rate by Product Type
SELECT
    p.product_type,
    ROUND(AVG(q.defect_rate),2) AS average_defect_rate
FROM products p
JOIN quality q
ON p.sku = q.sku
GROUP BY p.product_type
ORDER BY average_defect_rate DESC;