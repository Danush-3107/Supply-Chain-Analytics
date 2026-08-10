--DATAMODELING #
                 Products
                     │
                     │
      ┌──────────────┼──────────────┐
      │              │              │
 Inventory      Manufacturing    Shipping
      │              │              │
      └──────────────┼──────────────┘
                     │
                 Suppliers
                     │
                     │
                  Quality

--PRODUCTS TABLE#
CREATE TABLE products AS
SELECT
    "SKU" AS sku,
    "Product type" AS product_type,
    "Price" AS price
FROM supply_chain_raw;

SELECT *
FROM products
LIMIT 5;

--ADD PRIMARY KEY#
ALTER TABLE products
ADD PRIMARY KEY (sku);

SELECT COUNT(*) FROM products;

--INVENTORY TABLE
CREATE TABLE inventory AS
SELECT
    "SKU" AS sku,
    "Availability" AS availability,
    "Stock levels" AS stock_levels,
    "Number of products sold" AS products_sold,
    "Order quantities" AS order_quantities,
    "Revenue generated" AS revenue_generated
FROM supply_chain_raw;

ALTER TABLE inventory
ADD PRIMARY KEY (sku);

ALTER TABLE inventory
ADD CONSTRAINT fk_inventory_products
FOREIGN KEY (sku)
REFERENCES products(sku);

--#SUPPLIERS TABLE#
/*CREATE TABLE suppliers AS
SELECT DISTINCT
    "Supplier name" AS supplier_name,
    "Location" AS location,
    "Lead times" AS lead_time
FROM supply_chain_raw;

SELECT *
FROM suppliers;

ALTER TABLE suppliers
ADD PRIMARY KEY (supplier_name);

SELECT
    supplier_name,
    COUNT(*)
FROM suppliers
GROUP BY supplier_name
ORDER BY COUNT(*) DESC;

/*This exercise demonstrates an important principle of database design:
Normalization should be driven by the characteristics of the data, not by assumptions.
Although creating a separate supplier dimension is a common practice in relational database design, the supplied dataset does not contain a unique supplier master. Instead, supplier attributes vary across product records. Therefore, a separate suppliers table would violate primary key constraints and introduce an inaccurate data model.
By analyzing the dataset and adapting the schema accordingly, the final design remains both relationally correct and faithful to the available data.
*/

DROP TABLE suppliers;

*/

--MANUFACTURING TABLE
CREATE TABLE manufacturing AS
SELECT
    "SKU" AS sku,
    "Supplier name" AS supplier_name,
    "Location" AS location,
    "Lead times" AS supplier_lead_time,
    "Production volumes" AS production_volume,
    "Manufacturing lead time" AS manufacturing_lead_time,
    "Manufacturing costs" AS manufacturing_cost
FROM supply_chain_raw;

ALTER TABLE manufacturing
ADD PRIMARY KEY (sku);

ALTER TABLE manufacturing
ADD CONSTRAINT fk_manufacturing_products
FOREIGN KEY (sku)
REFERENCES products(sku);

-- Create Shipping Table

CREATE TABLE shipping AS
SELECT
    "SKU" AS sku,
    "Shipping carriers" AS shipping_carrier,
    "Shipping times" AS shipping_time,
    "Shipping costs" AS shipping_cost,
    "Transportation modes" AS transportation_mode,
    "Routes" AS route
FROM supply_chain_raw;

SELECT *
FROM shipping
LIMIT 10;

ALTER TABLE shipping
ADD PRIMARY KEY (sku);

ALTER TABLE shipping
ADD CONSTRAINT fk_shipping_products
FOREIGN KEY (sku)
REFERENCES products(sku);

--Quality Table
-- Create Quality Table

CREATE TABLE quality AS
SELECT
    "SKU" AS sku,
    "Inspection results" AS inspection_result,
    "Defect rates" AS defect_rate
FROM supply_chain_raw;

SELECT *
FROM quality
LIMIT 10;

ALTER TABLE quality
ADD PRIMARY KEY (sku);
ALTER TABLE quality
ADD CONSTRAINT fk_quality_products
FOREIGN KEY (sku)
REFERENCES products(sku);

SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM manufacturing;
SELECT COUNT(*) FROM shipping;
SELECT COUNT(*) FROM quality;

--CHECK THE CONSTRAINTS
SELECT
    tc.constraint_name,
    tc.constraint_type,
    kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'shipping';

SELECT
    tc.constraint_name,
    tc.constraint_type,
    kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'products';

SELECT
    tc.constraint_name,
    tc.constraint_type,
    kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'inventory';

SELECT
    tc.constraint_name,
    tc.constraint_type,
    kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'manufacturing';

SELECT
    tc.constraint_name,
    tc.constraint_type,
    kcu.column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
ON tc.constraint_name = kcu.constraint_name
WHERE tc.table_name = 'quality';




