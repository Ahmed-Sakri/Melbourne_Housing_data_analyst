-- Theme 1: Macro-Market & Price Drivers (The Big Picture)
-- 1. What are the top 5 strongest correlates with Price?

-- Direct correlation calculation for complete cases
WITH clean_data AS (
    SELECT 
        price,
        distance,
        landsize,
        rooms,
        propertycount,
        yearbuilt
    FROM Melbourne_Housing
    WHERE Price IS NOT NULL
      AND Distance IS NOT NULL
      AND Landsize IS NOT NULL
      AND Rooms IS NOT NULL
      AND Propertycount IS NOT NULL
      AND YearBuilt IS NOT NULL
)
SELECT 
    'Price vs Distance' as relationship,
    CORR(Price, Distance) as correlation_coefficient,
    'Negative correlation expected (further from CBD = lower price)' as interpretation
FROM clean_data

UNION ALL

SELECT 
    'Price vs Landsize',
    CORR(Price, Landsize),
    'Positive correlation expected (larger land = higher price)'
FROM clean_data

UNION ALL

SELECT 
    'Price vs Rooms',
    CORR(Price, Rooms),
    'Positive correlation expected (more rooms = higher price)'
FROM clean_data

UNION ALL

SELECT 
    'Price vs Propertycount',
    CORR(Price, Propertycount),
    'Could be negative (more properties = less exclusive)'
FROM clean_data

UNION ALL

SELECT 
    'Price vs YearBuilt',
    CORR(Price, YearBuilt),
    'Positive if newer homes more valuable, but could be curvilinear'
FROM clean_data

ORDER BY correlation_coefficient DESC;

-- 2. How does property price vary by Regionname?

SELECT regionname,
       ROUND(AVG(price), 2) as average_price,
       MIN(price) as min_price,
       MAX(price) as max_price,
       COUNT (*) as number_of_properties
FROM melbourne_housing
WHERE price IS NOT NULL
GROUP BY regionname
ORDER BY average_price DESC;

-- 3. What is the price trend over the Date of sale (seasonality and yearly)?
--- 1. we start we the year

SELECT EXTRACT(year FROM date) as year,
       ROUND(AVG(price), 2) as average_price
FROM Melbourne_Housing
WHERE price IS NOT NULL
GROUP BY EXTRACT(year FROM date)
ORDER BY year;

--- 2. we look at seasonality by month

SELECT EXTRACT(month FROM date) as month,
       ROUND(AVG(price), 2) as average_price
FROM Melbourne_Housing
WHERE price IS NOT NULL
GROUP BY EXTRACT(month FROM date)
ORDER BY month;


-- 4. Type vs. Price: How do houses (h), townhouses (t), and units (u) compare in median price and price distribution?
--- We are gonna answer this question using python and matplotlib/seaborn for better visualization


