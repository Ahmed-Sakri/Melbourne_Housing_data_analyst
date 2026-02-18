-- 1. Creating a "Price Per Square Meter" Metric

WITH clean_data AS (
    SELECT 
        price,
        landsize
    FROM melbourne_housing
    WHERE price IS NOT NULL
      AND landsize IS NOT NULL
      AND landsize > 0
)

SELECT 
    price,
    landsize,
    ROUND(price / landsize, 2) AS price_per_sqm
FROM clean_data;





-- 2. Is there a clear relationship between Distance from the CBD and the Price of the property?

WITH clean_data AS (
                    SELECT price,
                            distance
                    FROM melbourne_housing
                    WHERE price IS NOT NULL
                    )

SELECT 'Distance from CBD vs Price' AS relationship,
        CORR(price, distance) AS correlation_coefficient,
        'Negative correlation expected (further from CBD = lower price)' AS interpretation
FROM clean_data;

-- Can we model it? 
--- we gonna use Python in this 
---- we also gonna look into the Geospatial Hotspot Analysis
