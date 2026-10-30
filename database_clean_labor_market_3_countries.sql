
-- PROJECT: Labor Market Data Analysis

-- STEP 1: Create and Select Database
-- Create a new database for the project
CREATE DATABASE labor_market_project;
-- Select the project database
USE labor_market_project;

-- STEP 2: Import table from Excel (CSV.)

-- STEP 3: Check number of rows
USE labor_market_project;
SELECT COUNT(*) AS total_rows
FROM labormarket_wdi;

-- Step 4: Check null values in main columns
SELECT *
FROM labormarket_wdi
WHERE Country IS NULL
   OR Indicator IS NULL;
  SELECT *
FROM labormarket_wdi
WHERE TRIM(COALESCE(Country, '')) = ''
   OR TRIM(COALESCE(Indicator, '')) = ''; 
   
   -- STEP 5: Remove completely empty rows
   SET SQL_SAFE_UPDATES = 0;
   DELETE FROM labormarket_wdi
WHERE TRIM(COALESCE(Country, '')) = ''
  AND TRIM(COALESCE(Indicator, '')) = '';
  SET SQL_SAFE_UPDATES = 1;
  
  -- STEP 6: Check duplicates
SELECT Country, Indicator, COUNT(*) AS count
FROM labormarket_wdi
GROUP BY Country, Indicator
HAVING COUNT(*) > 1;

-- STEP 7: Check missing GDP values
SELECT Country, Indicator, `2022`, `2023`, `2024`
FROM labormarket_wdi
WHERE TRIM(COALESCE(`2022`, '')) = ''
   OR TRIM(COALESCE(`2023`, '')) = ''
   OR TRIM(COALESCE(`2024`, '')) = '';
   
  -- STEP 8: Remove % signs and convert blanks to NULL
  SET SQL_SAFE_UPDATES = 0;
  UPDATE labormarket_wdi
SET
`2000` = NULLIF(REPLACE(TRIM(`2000`), '%', ''), ''),
`2001` = NULLIF(REPLACE(TRIM(`2001`), '%', ''), ''),
`2002` = NULLIF(REPLACE(TRIM(`2002`), '%', ''), ''),
`2003` = NULLIF(REPLACE(TRIM(`2003`), '%', ''), ''),
`2004` = NULLIF(REPLACE(TRIM(`2004`), '%', ''), ''),
`2005` = NULLIF(REPLACE(TRIM(`2005`), '%', ''), ''),
`2006` = NULLIF(REPLACE(TRIM(`2006`), '%', ''), ''),
`2007` = NULLIF(REPLACE(TRIM(`2007`), '%', ''), ''),
`2008` = NULLIF(REPLACE(TRIM(`2008`), '%', ''), ''),
`2009` = NULLIF(REPLACE(TRIM(`2009`), '%', ''), ''),
`2010` = NULLIF(REPLACE(TRIM(`2010`), '%', ''), ''),
`2011` = NULLIF(REPLACE(TRIM(`2011`), '%', ''), ''),
`2012` = NULLIF(REPLACE(TRIM(`2012`), '%', ''), ''),
`2013` = NULLIF(REPLACE(TRIM(`2013`), '%', ''), ''),
`2014` = NULLIF(REPLACE(TRIM(`2014`), '%', ''), ''),
`2015` = NULLIF(REPLACE(TRIM(`2015`), '%', ''), ''),
`2016` = NULLIF(REPLACE(TRIM(`2016`), '%', ''), ''),
`2017` = NULLIF(REPLACE(TRIM(`2017`), '%', ''), ''),
`2018` = NULLIF(REPLACE(TRIM(`2018`), '%', ''), ''),
`2019` = NULLIF(REPLACE(TRIM(`2019`), '%', ''), ''),
`2020` = NULLIF(REPLACE(TRIM(`2020`), '%', ''), ''),
`2021` = NULLIF(REPLACE(TRIM(`2021`), '%', ''), ''),
`2022` = NULLIF(REPLACE(TRIM(`2022`), '%', ''), ''),
`2023` = NULLIF(REPLACE(TRIM(`2023`), '%', ''), ''),
`2024` = NULLIF(REPLACE(TRIM(`2024`), '%', ''), '');
SET SQL_SAFE_UPDATES = 1;

-- STEP 9: Convert years to numeric data type
ALTER TABLE labormarket_wdi
MODIFY COLUMN `2000` DOUBLE,
MODIFY COLUMN `2001` DOUBLE,
MODIFY COLUMN `2002` DOUBLE,
MODIFY COLUMN `2003` DOUBLE,
MODIFY COLUMN `2004` DOUBLE,
MODIFY COLUMN `2005` DOUBLE,
MODIFY COLUMN `2006` DOUBLE,
MODIFY COLUMN `2007` DOUBLE,
MODIFY COLUMN `2008` DOUBLE,
MODIFY COLUMN `2009` DOUBLE,
MODIFY COLUMN `2010` DOUBLE,
MODIFY COLUMN `2011` DOUBLE,
MODIFY COLUMN `2012` DOUBLE,
MODIFY COLUMN `2013` DOUBLE,
MODIFY COLUMN `2014` DOUBLE,
MODIFY COLUMN `2015` DOUBLE,
MODIFY COLUMN `2016` DOUBLE,
MODIFY COLUMN `2017` DOUBLE,
MODIFY COLUMN `2018` DOUBLE,
MODIFY COLUMN `2019` DOUBLE,
MODIFY COLUMN `2020` DOUBLE,
MODIFY COLUMN `2021` DOUBLE,
MODIFY COLUMN `2022` DOUBLE,
MODIFY COLUMN `2023` DOUBLE,
MODIFY COLUMN `2024` DOUBLE;
ALTER TABLE labormarket_wdi DROP COLUMN MyUnknownColumn;

-- STEP 10: Check data types
DESCRIBE labormarket_wdi;

-- STEP 11: Standardize country names
SELECT DISTINCT Country
FROM labormarket_wdi;

-- STEP 12: Standardize indicator names
SELECT DISTINCT Indicator
FROM labormarket_wdi;

-- STEP 13: Final duplicate check
SELECT Country, Indicator, COUNT(*) AS count
FROM labormarket_wdi
GROUP BY Country, Indicator
HAVING COUNT(*) > 1;

-- STEP 14: Final row count
SELECT COUNT(*) AS total_rows
FROM labormarket_wdi;

-- STEP 15: Final missing values checks
SELECT Country, Indicator, `2022`, `2023`, `2024`
FROM labormarket_wdi
WHERE `2022` IS NULL
   OR `2023` IS NULL
   OR `2024` IS NULL;
   
   -- STEP 16: Final check table
   SELECT *
FROM labormarket_wdi;
