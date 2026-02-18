-- 1.What is the typical "package" of rooms, bathrooms, and car spaces for different price brackets? 
WITH Price_brackets AS (
        SELECT
            CASE 
                WHEN price < 500000 THEN 'Low'
                WHEN price BETWEEN 500000 AND 1500000 THEN 'Medium'
                WHEN price > 1500000 THEN 'High'
            END AS Price_brackets,
            rooms,
            bedroom2,
            car
        FROM Melbourne_Housing
)

SELECT Price_brackets,
       ROUND(AVG(rooms), 0) AS avg_rooms,
       ROUND(AVG(bedroom2), 0) AS avg_bedrooms,
       ROUND(AVG(car), 0) AS avg_car_spaces
FROM Price_brackets
GROUP BY Price_brackets;

-- 2.For properties where both are recorded, what is the ratio of BuildingArea to Landsize (Footprint Ratio), and how does it relate to Type and Price?

SELECT 
    type,
    ROUND(AVG(buildingarea / NULLIF(landsize, 0)), 2) AS Footprint_Ratio,
    ROUND(AVG(price)) AS avg_price,
    CORR(buildingarea / NULLIF(landsize, 0), price) AS correlation
FROM Melbourne_Housing
WHERE buildingarea IS NOT NULL
      AND buildingarea > 0
      AND landsize IS NOT NULL
      AND landsize > 0
      AND price IS NOT NULL
GROUP BY type;

-- 3.How does YearBuilt (age of property) affect price? 
--- we will  find out using python visualization