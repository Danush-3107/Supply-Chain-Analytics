
CREATE TABLE supply_chain_raw (
    product_type VARCHAR(50),
    sku VARCHAR(50),
    price NUMERIC(10,2),
    availability INTEGER,
    number_of_products_sold INTEGER,
    revenue_generated NUMERIC(12,2),
    customer_demographics VARCHAR(50),
    stock_levels INTEGER,
    lead_times INTEGER,
    order_quantities INTEGER,
    shipping_times INTEGER,
    shipping_carriers VARCHAR(100),
    shipping_costs NUMERIC(10,2),
    supplier_name VARCHAR(100),
    location VARCHAR(100),
    lead_time INTEGER,
    production_volumes INTEGER,
    manufacturing_lead_time INTEGER,
    manufacturing_costs NUMERIC(10,2),
    inspection_results VARCHAR(50),
    defect_rates NUMERIC(5,2),
    transportation_modes VARCHAR(50),
    routes VARCHAR(50),
    costs NUMERIC(12,2)
);

DROP TABLE IF EXISTS supply_chain_raw;

CREATE TABLE supply_chain_raw (
    "Product type" VARCHAR(50),
    "SKU" VARCHAR(50),
    "Price" NUMERIC(10,2),
    "Availability" INTEGER,
    "Number of products sold" INTEGER,
    "Revenue generated" NUMERIC(12,2),
    "Customer demographics" VARCHAR(50),
    "Stock levels" INTEGER,
    "Lead times" INTEGER,
    "Order quantities" INTEGER,
    "Shipping times" INTEGER,
    "Shipping carriers" VARCHAR(100),
    "Shipping costs" NUMERIC(10,2),
    "Supplier name" VARCHAR(100),
    "Location" VARCHAR(100),
    "Lead time" INTEGER,
    "Production volumes" INTEGER,
    "Manufacturing lead time" INTEGER,
    "Manufacturing costs" NUMERIC(10,2),
    "Inspection results" VARCHAR(50),
    "Defect rates" NUMERIC(10,4),
    "Transportation modes" VARCHAR(50),
    "Routes" VARCHAR(50),
    "Costs" NUMERIC(12,2)
);

SELECT *
FROM supply_chain_raw
LIMIT 10;


SELECT COUNT(*)
FROM supply_chain_raw;

SELECT column_name,
       data_type
FROM information_schema.columns
WHERE table_name = 'supply_chain_raw';


SELECT COUNT(DISTINCT "SKU")
FROM supply_chain_raw;

--#CHECK FOR DUPLICATES#

SELECT
    "SKU",
    COUNT(*)
FROM supply_chain_raw
GROUP BY "SKU"
HAVING COUNT(*) > 1;

--#CHECK MISSING VALUES#

SELECT
    COUNT(*) FILTER (WHERE "SKU" IS NULL) AS missing_sku,
    COUNT(*) FILTER (WHERE "Price" IS NULL) AS missing_price,
    COUNT(*) FILTER (WHERE "Revenue generated" IS NULL) AS missing_revenue,
    COUNT(*) FILTER (WHERE "Stock levels" IS NULL) AS missing_stock,
    COUNT(*) FILTER (WHERE "Supplier name" IS NULL) AS missing_supplier,
    COUNT(*) FILTER (WHERE "Lead times" IS NULL) AS missing_lead_time,
    COUNT(*) FILTER (WHERE "Shipping costs" IS NULL) AS missing_shipping_cost
FROM supply_chain_raw;

--#TABLE STRUCTURE#
SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'supply_chain_raw';

--#DESCRIPTIVE STATS#

--#PRICE#
SELECT
MIN("Price") AS min_price,
MAX("Price") AS max_price,
ROUND(AVG("Price"),2) AS avg_price
FROM supply_chain_raw;

--#REVENUE#
SELECT
MIN("Revenue generated") AS min_revenue,
MAX("Revenue generated") AS max_revenue,
ROUND(AVG("Revenue generated"),2) AS avg_revenue
FROM supply_chain_raw;

--#STOCK LEVELS#
SELECT
MIN("Stock levels") AS min_stock,
MAX("Stock levels") AS max_stock,
ROUND(AVG("Stock levels"),2) AS avg_stock
FROM supply_chain_raw;

--#Manufacturing Costs#
SELECT
MIN("Manufacturing costs") AS min_cost,
MAX("Manufacturing costs") AS max_cost,
ROUND(AVG("Manufacturing costs"),2) AS avg_cost
FROM supply_chain_raw;

--#DEFECT RATES#
SELECT
MIN("Defect rates") AS min_defect,
MAX("Defect rates") AS max_defect,
ROUND(AVG("Defect rates"),2) AS avg_defect
FROM supply_chain_raw;

--#Explore Categorical Columns#
--#PRODUCT TYPES#
SELECT
"Product type",
COUNT(*) AS total_products
FROM supply_chain_raw
GROUP BY "Product type"
ORDER BY total_products DESC;

--#SUPPLIERS#
SELECT
"Supplier name",
COUNT(*) AS total_products
FROM supply_chain_raw
GROUP BY "Supplier name"
ORDER BY total_products DESC;

--#SHIPPING CARRIERS#
SELECT
"Shipping carriers",
COUNT(*) AS total_shipments
FROM supply_chain_raw
GROUP BY "Shipping carriers"
ORDER BY total_shipments DESC;

--#TRANSPORTATION MODES#
SELECT
"Transportation modes",
COUNT(*) AS total_shipments
FROM supply_chain_raw
GROUP BY "Transportation modes"
ORDER BY total_shipments DESC;

--#Check Numeric Ranges#
SELECT
MIN("Lead times") AS min_lead_time,
MAX("Lead times") AS max_lead_time,
MIN("Shipping times") AS min_shipping_time,
MAX("Shipping times") AS max_shipping_time,
MIN("Order quantities") AS min_order_qty,
MAX("Order quantities") AS max_order_qty,
MIN("Production volumes") AS min_production_volume,
MAX("Production volumes") AS max_production_volume
FROM supply_chain_raw;