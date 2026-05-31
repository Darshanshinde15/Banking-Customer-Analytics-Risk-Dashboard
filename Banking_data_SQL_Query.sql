-- 1. Which states have the most customers?
SELECT
    STATE,
    COUNT(*) AS total_customers
FROM banking_data
GROUP BY STATE
ORDER BY total_customers DESC;
---------------------------------------------------------
-- 2.Which states contribute the most risky customers?
SELECT
    Profession,
    COUNT(*) AS total_customers
FROM banking_data
GROUP BY Profession
ORDER BY total_customers DESC;
--------------------------------------------------------
-- 3. Which professions dominate the dataset?
SELECT
    Profession,
    COUNT(*) AS total_customers
FROM banking_data
GROUP BY Profession
ORDER BY total_customers DESC;
--------------------------------------------------------
-- 4. Which professions have the most risky customers?
SELECT
    Profession,
    COUNT(*) AS risky_customers
FROM banking_data
WHERE Risk_Flag = 1
GROUP BY Profession
ORDER BY risky_customers DESC;
-------------------------------------------------------
-- 5. Customer distribution by marital status.
SELECT
    'Married/single',
    COUNT(*) AS total_customers
FROM banking_data
GROUP BY 'Married/single';
--------------------------------------------------------
-- 6. Are married or single customers riskier?
SELECT
    'Married/single',
    COUNT(*) AS risky_customers
FROM banking_data
WHERE Risk_Flag = 1
GROUP BY 'Married/single';
---------------------------------------------------------
-- 7. Which housing category is most common?
SELECT
    House_Ownership,
    COUNT(*) AS total_customers
FROM banking_data
GROUP BY House_Ownership;
---------------------------------------------------------
-- 8. Does house ownership relate to risk?
SELECT
    House_Ownership,
    COUNT(*) AS risky_customers
FROM banking_data
WHERE Risk_Flag = 1
GROUP BY House_Ownership;
----------------------------------------------------------
-- 9. Does owning a car affect customer risk?
SELECT
    Car_Ownership,
    COUNT(*) AS risky_customers
FROM banking_data
WHERE Risk_Flag = 1
GROUP BY Car_Ownership;
---------------------------------------------------------
-- 10. Which income group contains the most risky customers?
SELECT
CASE
    WHEN Income < 3000000 THEN 'Low Income'
    WHEN Income < 7000000 THEN 'Medium Income'
    ELSE 'High Income'
END AS Income_Group,
COUNT(*) AS risky_customers
FROM banking_data
WHERE Risk_Flag = 1
GROUP BY Income_Group;
