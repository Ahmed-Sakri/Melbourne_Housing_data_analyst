COPY Housing
FROM 'C:/Users/pc/OneDrive/Desktop/data_analyst/melb_data.csv'
WITH (FORMAT CSV, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

SELECT * FROM Housing;

COPY Melbourne_Housing
FROM 'C:/Users/pc/OneDrive/Desktop/data_analyst/melbourne_housing_clean.csv'
WITH (FORMAT CSV, HEADER true, DELIMITER ',', ENCODING 'UTF-8');

SELECT * FROM Melbourne_Housing;

