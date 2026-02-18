-- 1. Who are the top 5 SellerG (real estate agents) by year and total sales volume?
WITH topsellerg2016 AS (
    SELECT 
        sellerg,
        SUM(price) AS total_sales_volume,
        COUNT(*) AS total_properties_sold,
        EXTRACT(YEAR FROM date) AS year_sells
    FROM Melbourne_Housing
    WHERE price IS NOT NULL
        AND EXTRACT(YEAR FROM date) = 2016
    GROUP BY sellerg, EXTRACT(YEAR FROM date)
    ORDER BY total_sales_volume DESC
    LIMIT 5
),
topsellerg2017 AS (
    SELECT 
        sellerg,
        SUM(price) AS total_sales_volume,
        COUNT(*) AS total_properties_sold,
        EXTRACT(YEAR FROM date) AS year_sells
    FROM Melbourne_Housing
    WHERE price IS NOT NULL
        AND EXTRACT(YEAR FROM date) = 2017
    GROUP BY sellerg, EXTRACT(YEAR FROM date)
    ORDER BY total_sales_volume DESC
    LIMIT 5
)
SELECT * FROM topsellerg2016
UNION ALL
SELECT * FROM topsellerg2017
ORDER BY year_sells, total_sales_volume DESC;

-- 2. What is the distribution of sales methods (Method) across different property types (Type)?

WITH method_counts AS (
    SELECT 
        type,
        method,
        COUNT(*) as count_per_method
    FROM Melbourne_Housing
    WHERE price IS NOT NULL
    GROUP BY type, method
),
type_totals AS (
    SELECT 
        type,
        SUM(count_per_method) as total_per_type
    FROM method_counts
    GROUP BY type
)
SELECT 
    mc.type,
    mc.method,
    mc.count_per_method,
    ROUND((mc.count_per_method * 100.0 / tt.total_per_type), 1) AS percentage_within_type
FROM method_counts mc
JOIN type_totals tt ON mc.type = tt.type
ORDER BY mc.type, percentage_within_type DESC;

-- 3. Which CouncilArea has the highest number of sales (Propertycount)? 

SELECT councilarea,
       COUNT(*) AS number_of_sales
FROM Melbourne_Housing
WHERE councilarea IS NOT NULL
GROUP BY councilarea
ORDER BY number_of_sales DESC;

-- Which has the highest average price?

WITH councilarea_AVG AS (
    SELECT councilarea,
       COUNT(*) AS number_of_sales,
       ROUND(SUM(price), 2) AS total_sales_volume
    FROM Melbourne_Housing
    WHERE councilarea IS NOT NULL
    GROUP BY councilarea
    ORDER BY total_sales_volume DESC
)

SELECT *,
       ROUND(total_sales_volume / number_of_sales, 2) AS average_price
FROM councilarea_AVG
ORDER BY average_price DESC;

-- 4. What is the average price of properties based on the number of rooms (Rooms)?

SELECT rooms,
       ROUND(AVG(price), 2) AS average_price
FROM Melbourne_Housing
WHERE price IS NOT NULL
GROUP BY rooms
ORDER BY rooms ASC;

