--DATA CLEANING :
--#CHECKING FOR NULL VALUES#

SELECT
COUNT(*) FILTER (WHERE "Product type" IS NULL) AS product_type,
COUNT(*) FILTER (WHERE "SKU" IS NULL) AS sku,
COUNT(*) FILTER (WHERE "Price" IS NULL) AS price,
COUNT(*) FILTER (WHERE "Availability" IS NULL) AS availability,
COUNT(*) FILTER (WHERE "Number of products sold" IS NULL) AS products_sold,
COUNT(*) FILTER (WHERE "Revenue generated" IS NULL) AS revenue,
COUNT(*) FILTER (WHERE "Customer demographics" IS NULL) AS customer_demographics,
COUNT(*) FILTER (WHERE "Stock levels" IS NULL) AS stock_levels,
COUNT(*) FILTER (WHERE "Lead times" IS NULL) AS lead_times,
COUNT(*) FILTER (WHERE "Order quantities" IS NULL) AS order_quantities,
COUNT(*) FILTER (WHERE "Shipping times" IS NULL) AS shipping_times,
COUNT(*) FILTER (WHERE "Shipping carriers" IS NULL) AS shipping_carriers,
COUNT(*) FILTER (WHERE "Shipping costs" IS NULL) AS shipping_costs,
COUNT(*) FILTER (WHERE "Supplier name" IS NULL) AS supplier_name,
COUNT(*) FILTER (WHERE "Location" IS NULL) AS location,
COUNT(*) FILTER (WHERE "Production volumes" IS NULL) AS production_volumes,
COUNT(*) FILTER (WHERE "Manufacturing lead time" IS NULL) AS manufacturing_lead_time,
COUNT(*) FILTER (WHERE "Manufacturing costs" IS NULL) AS manufacturing_costs,
COUNT(*) FILTER (WHERE "Inspection results" IS NULL) AS inspection_results,
COUNT(*) FILTER (WHERE "Defect rates" IS NULL) AS defect_rates,
COUNT(*) FILTER (WHERE "Transportation modes" IS NULL) AS transportation_modes,
COUNT(*) FILTER (WHERE "Routes" IS NULL) AS routes,
COUNT(*) FILTER (WHERE "Costs" IS NULL) AS costs
FROM supply_chain_raw;

--#CHECK FOR DUPLICATES#
SELECT *,
COUNT(*)
FROM supply_chain_raw
GROUP BY
"Product type",
"SKU",
"Price",
"Availability",
"Number of products sold",
"Revenue generated",
"Customer demographics",
"Stock levels",
"Lead times",
"Order quantities",
"Shipping times",
"Shipping carriers",
"Shipping costs",
"Supplier name",
"Location",
"Lead time",
"Production volumes",
"Manufacturing lead time",
"Manufacturing costs",
"Inspection results",
"Defect rates",
"Transportation modes",
"Routes",
"Costs"
HAVING COUNT(*) > 1;

--#CHECK FOR NEGATIVE VALUES#
SELECT *
FROM supply_chain_raw
WHERE
"Price" < 0
OR "Revenue generated" < 0
OR "Stock levels" < 0
OR "Manufacturing costs" < 0
OR "Shipping costs" < 0;

--#CHECK OUTLIERS#

--#HIGHEST REVENUE PRODUCTS#
SELECT
"SKU",
"Revenue generated"
FROM supply_chain_raw
ORDER BY "Revenue generated" DESC
LIMIT 10;

--#HIGHEST MANUFACTURING COSTS#
SELECT
"SKU",
"Manufacturing costs"
FROM supply_chain_raw
ORDER BY "Manufacturing costs" DESC
LIMIT 10;

--HIGHEST SHIPPING COSTS#
SELECT
"SKU",
"Shipping costs"
FROM supply_chain_raw
ORDER BY "Shipping costs" DESC
LIMIT 10;

--#CHECK DATA CONSISTENCY#
SELECT DISTINCT "Product type"
FROM supply_chain_raw;

SELECT DISTINCT "Inspection results"
FROM supply_chain_raw;

SELECT DISTINCT "Transportation modes"
FROM supply_chain_raw;

SELECT DISTINCT "Shipping carriers"
FROM supply_chain_raw;

SELECT
MIN("Price"),
MAX("Price"),
MIN("Revenue generated"),
MAX("Revenue generated"),
MIN("Defect rates"),
MAX("Defect rates")
FROM supply_chain_raw;