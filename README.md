# Customer Churn Dashboard Analytics

## 📊 Project Overview

Customer churn is a major challenge for businesses because losing existing customers can reduce revenue, customer lifetime value, and long-term growth.

This project analyzes customer data to identify **patterns and factors associated with customer churn**. The analysis combines data cleaning, SQL analysis, Excel, and Power BI to transform raw customer data into actionable business insights.

An interactive **Power BI Customer Churn Dashboard** was developed to help stakeholders monitor churn, understand customer behavior, identify high-risk customer segments, and make data-driven retention decisions.

---
## Datasets Used
- <a href="https://github.com/IykeTheAnalyst/Customer-Churn-Dashboard-Analytics/blob/main/Customer%20Churn%20Dataset.xlsx">Dataset</a>

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze the overall customer churn rate.
* Identify customer segments with high churn rates.
* Analyze churn across different customer demographics.
* Examine the relationship between customer tenure and churn rate.
* Analyze churn based on products and services.
* Identify factors associated with customer attrition.
* Create an interactive Power BI dashboard for monitoring churn.
* Provide actionable recommendations to improve customer retention.

---

## 💼 Business Problem

The company is experiencing customer churn and needs to understand **why customers are leaving**.

The analysis seeks to answer important business questions such as:

1. What percentage of customers have churned?
2. Which customer segments have the highest churn?
3. Does customer tenure affect churn?
4. Which products or services are associated with higher churn?
5. Which customer characteristics are linked to customer attrition?
6. What factors should the business focus on to improve customer retention?
7. What actions can be taken to reduce future churn?

---

## 🛠️ Tools & Technologies

| Tool                | Purpose                                                   |
| ------------------- | --------------------------------------------------------- |
| **Microsoft Excel** | Data inspection, cleaning, and preliminary analysis        |
| **SQL Server**      | Data cleaning, transformation, and customer churn analysis |
| **Power BI**        | Interactive dashboard and data visualization              |
| **DAX**             | Calculated measures and KPIs                              |
| **Git & GitHub**    | Version control and project portfolio management          |

---

## 🔄 Project Workflow

The project followed the following data analytics workflow:

```text
Raw Customer Data
       ↓
Data Cleaning & Preparation
       ↓
SQL Data Analysis
       ↓
Exploratory Data Analysis
       ↓
KPI & Metric Development
       ↓
Power BI Data Modeling
       ↓
DAX Calculations
       ↓
Interactive Dashboard
       ↓
Business Insights
       ↓
Recommendations
```

---

## 📁 Project Structure

```text
Customer-Churn-Dashboard-Analytics/
│
├── README.md
│
├── Data/
│   ├── raw_data.xlsx
│   └── cleaned_data.xlsx
│
├── SQL/
│   ├── 01_Data_Cleaning.sql
│   ├── 02_Exploratory_Analysis.sql
│   ├── 03_Customer_Churn_Analysis.sql
│   └── 04_Business_Insights.sql
│
├── PowerBI/
│   └── Customer_Churn_Dashboard.pbix
│
├── Dashboard/
│   ├── dashboard_overview.png
│   ├── churn_analysis.png
│   └── customer_segments.png
│
├── Excel/
│   └── Customer_Churn_Analysis.xlsx
│
└── Documentation/
    ├── Project_Objectives.md
    ├── Business_Questions.md
    └── Key_Insights.md
```

---

## 📊 Dashboard

The Power BI dashboard provides an interactive view of customer churn and allows users to explore customer behavior across different dimensions.

### Dashboard Features

* Total Customers
* Churned Customers
* Churn Rate
* Retained Customers
* Customer segmentation
* Churn by demographics
* Churn by tenure
* Churn by products/services
* Churn by contract/customer category
* Interactive filters and slicers

### Dashboard Preview

- <a href="https://github.com/IykeTheAnalyst/Customer-Churn-Dashboard-Analytics/blob/main/Costumer%20Churn%20Dashboard%20Analysis.pbix">Dashboard</a>

---

## 🔎 SQL Analysis

SQL was used to analyze the customer dataset and generate key metrics.

Examples of the analysis include:

* Total number of customers
* Number of churned customers
* Overall churn rate
* Churn by Payment Method
* Churn by Senior Citizen
* Churn by tenure
* Churn by Internet Service
* Comparison between Tenure and Churn rate

Example:

```sql
SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END) AS Churned_Customers,
    CAST(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*)
        AS DECIMAL(10,2)
    ) AS Churn_Rate
FROM Customer_Churn;
```

---

## 📈 Key Performance Indicators

The dashboard focuses on important customer retention KPIs, including:

**Total Customers**

The total number of customers in the dataset.

**Churned Customers**

The number of customers who have discontinued their relationship with the company.

**Retained Customers**

The number of customers who remain active.

**Churn Rate**

The percentage of customers who have churned.

```text
Churn Rate =
Churned Customers / Total Customers × 100
```

---

## 💡 Key Insights

The analysis is designed to identify:

* Customer groups with the highest churn.
* Customer characteristics associated with increased churn risk.
* The relationship between tenure and customer retention.
* Products or services that may require further investigation.
* Customer segments that could benefit from targeted retention strategies.

> **Note:** Specific numerical findings should be updated with the actual results from the dataset and dashboard.

---

## 🎯 Business Recommendations

Based on the churn analysis, the following strategies can be considered:

### 1. Target High-Risk Customers

Identify customers displaying characteristics associated with high churn and develop targeted retention campaigns.

### 2. Improve Early Customer Experience

Customers with shorter tenure may require stronger onboarding, engagement, and customer support.

### 3. Investigate High-Churn Services

Products or services with unusually high churn should be investigated to identify potential pricing, quality, or customer-experience issues.

### 4. Develop Customer Retention Programs

Create personalized offers, loyalty programs, and incentives for valuable customers who are at risk of leaving.

### 5. Monitor Churn Continuously

Use the Power BI dashboard as a monitoring tool to track churn trends and identify changes in customer behavior over time.

---

## 🚀 Skills Demonstrated

This project demonstrates practical experience in:

* Data Cleaning
* Data Transformation
* SQL
* Exploratory Data Analysis
* Data Visualization
* Power BI
* DAX
* KPI Development
* Business Intelligence
* Customer Analytics
* Data Storytelling
* Business Recommendations
* Git & GitHub

---

## 📌 Conclusion

The **Customer Churn Dashboard Analytics** project demonstrates how customer data can be transformed into meaningful business intelligence.

By combining **SQL, Excel, and Power BI**, the project provides a structured approach to understanding customer churn, identifying high-risk customer segments, and developing strategies that can support improved customer retention.

---

## 👨‍💻 Author

**Emmanuel Osuagwu**

**Data Analyst | SQL | Excel | Power BI | Data Visualization**

This project is part of my data analytics portfolio and demonstrates my ability to transform raw data into actionable business insights.

