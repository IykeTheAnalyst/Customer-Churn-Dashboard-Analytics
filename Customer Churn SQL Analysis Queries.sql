SELECT *
FROM [Churn_Table].[dbo].[Customer Churn Datasets]

-- Total number of customers
SELECT COUNT(*) AS TotalCustomers
FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Customers who churned vs retained
SELECT
    Churn,
    COUNT(*) AS CustomerCount
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY Churn;

-- Customers who did NOT churn
SELECT
    COUNT(CASE WHEN Churn = 1 THEN 1 END) AS ChurnedCustomers,
    COUNT(CASE WHEN Churn = 0 THEN 1 END) AS RetainedCustomers,
    COUNT(*) AS TotalCustomers,

    CAST(
        COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate

FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Churn rate
SELECT COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    COUNT(*) AS TotalCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Total revenue
SELECT
    SUM(TotalCharges) AS TotalRevenue
FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Average monthly charge
SELECT
    AVG(MonthlyCharges) AS AverageMonthlyCharges
FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Average total charges
SELECT
    AVG(TotalCharges) AS AverageTotalCharges
FROM [Churn_Table].[dbo].[Customer Churn Datasets];

-- Revenue from churned vs retained customers
SELECT
    Churn,
    COUNT(*) AS Customers,
    SUM(TotalCharges) AS TotalRevenue,
    AVG(TotalCharges) AS AverageRevenue
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY Churn;

-- Churn by Gender
SELECT
    gender,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY gender;

-- Customers by Contract
SELECT
    Contract,
    COUNT(*) AS TotalCustomers
FROM [dbo].[Customer Churn Datasets]
GROUP BY Contract;

-- churn by contract
SELECT
    Contract,

    COUNT(*) AS TotalCustomers,

    COUNT(CASE
        WHEN Churn = '1' THEN 1
    END) AS ChurnedCustomers,

    COUNT(CASE
        WHEN Churn = '0' THEN 1
    END) AS RetainedCustomers,

    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate

FROM [Churn_Table].[dbo].[Customer Churn Datasets]

GROUP BY Contract

ORDER BY ChurnRate DESC;

-- Churn by payment method
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY PaymentMethod
ORDER BY ChurnRate DESC;

-- Churn by payment method
SELECT
    InternetService,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY InternetService
ORDER BY ChurnRate DESC;

-- Churn by partner status
SELECT
    SeniorCitizen,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY SeniorCitizen;

-- Churn by tenure
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS TenureGroup,

    COUNT(*) AS TotalCustomers,

    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,

    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate

FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END
ORDER BY ChurnRate DESC;

-- High-value customers
SELECT
    customerID,
    gender,
    tenure,
    Contract,
    MonthlyCharges,
    TotalCharges,
    Churn
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
WHERE TotalCharges >= 800
ORDER BY TotalCharges DESC;


-- customers using Electronic Check
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
WHERE PaymentMethod = 'Electronic check'
GROUP BY PaymentMethod;

-- Techsupport services
SELECT
    TechSupport,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY TechSupport
ORDER BY ChurnRate DESC;

-- OnlineSecurity
SELECT
    OnlineSecurity,
    COUNT(*) AS TotalCustomers,
    COUNT(CASE WHEN Churn = '1' THEN 1 END) AS ChurnedCustomers,
    CAST(
        COUNT(CASE WHEN Churn = '1' THEN 1 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS ChurnRate
FROM [Churn_Table].[dbo].[Customer Churn Datasets]
GROUP BY OnlineSecurity
ORDER BY ChurnRate DESC;