# 🏦 Bank Customer Churn Analysis

A complete end-to-end Data Analytics project analyzing customer churn behavior
for a bank across France, Germany, and Spain using Python, SQL, and Power BI.

---

## 📁 Project Structure

```
bank-customer-churn-analysis/
│
├── 📓 bank_customer_python_eda.ipynb     # Python EDA Notebook
├── 🗄️  bank_sql_insight.sql              # SQL Analysis Queries
├── 📊 bank_dashboard.pbit                # Power BI Dashboard Template
├── 📄 bank_dashboard_pdf.pdf             # Dashboard Export PDF
├── 📋 Bank_Customer_Churn_Prediction.csv # Dataset
└── 📝 README.md                          # Project Documentation
```

---

## 📋 Project Overview

| Detail | Info |
|--------|------|
| **Domain** | Banking / Customer Analytics |
| **Goal** | Identify key factors driving customer churn |
| **Dataset** | 10,000 customers, 12 features |
| **Tools Used** | Python, MySQL, Power BI |
| **Type** | Exploratory Data Analysis + SQL + Dashboard |

---

## 📊 Dataset Description

**File:** `Bank_Customer_Churn_Prediction.csv`
**Records:** 10,000 rows | **Features:** 12 columns

| Column | Type | Description |
|--------|------|-------------|
| `customer_id` | int | Unique customer identifier |
| `credit_score` | int | Customer credit score |
| `country` | str | France, Spain, or Germany |
| `gender` | str | Male or Female |
| `age` | int | Customer age |
| `tenure` | int | Years with the bank |
| `balance` | float | Account balance |
| `products_number` | int | Number of bank products held |
| `credit_card` | int | Has credit card (0/1) |
| `active_member` | int | Is active member (0/1) |
| `estimated_salary` | float | Estimated annual salary |
| `churn` | int | Target — Did customer leave? (0=No, 1=Yes) |

---

## 🐍 Python EDA — `bank_customer_python_eda.ipynb`

### Libraries Used
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os
```

### Steps Performed

| Step | Action |
|------|--------|
| 1 | Import Libraries |
| 2 | Load Dataset |
| 3 | Data Inspection — info(), describe(), isnull() |
| 4 | Data Cleaning — drop_duplicates() |
| 5 | Churn Distribution Analysis |
| 6 | Full Feature Pairplot |
| 7 | KDE Distribution Plots by Churn |
| 8 | Focused Pairplot — Key Features |
| 9 | Boxplot — Age by Churn |
| 10 | Countplot — Churn by Country |
| 11 | Countplots — Categorical Features by Churn |
| 12 | Correlation Heatmap |
| 13 | Scatter — Balance vs Products by Churn |
| 14 | Churn Rate by Number of Products |

### Key Python Findings
- **Age** is the strongest numerical predictor (avg churned = 45, not churned = 37)
- **Balance** is bimodal — many customers have zero or high balance
- **Credit score** and **salary** show no meaningful difference by churn
- **2 products** = lowest churn rate (7.58%)

---

## 🗄️ SQL Analysis — `bank_sql_insight.sql`

### Database Setup
```sql
USE bank_churn;
SELECT * FROM bank_customer;
```

### Queries Written

| # | Query | Purpose |
|---|-------|---------|
| 1 | Count churned vs not churned | Basic churn breakdown |
| 2 | Overall churn rate % | Key business metric |
| 3 | Unique countries and genders | Data exploration |
| 4 | Customer count by country | Geographic distribution |
| 5 | Average credit score | Baseline metric |
| 6 | Churn rate by country | Geographic risk analysis |
| 7 | Churn rate by gender | Gender risk analysis |
| 8 | Average age by churn | Age comparison |
| 9 | Churn rate by products | Product loyalty analysis |
| 10 | Churn rate — active vs inactive | Engagement analysis |
| 11 | Average balance by churn | Financial comparison |
| 12 | Churn rate by credit card | Credit card impact |
| 13 | Churn rate — country + gender combined | Segment analysis |
| 14 | High balance churned customers | Premium customer risk |
| 15 | Churn rate by age group (bins) | Age segmentation |
| 16 | Top 10 at-risk customers | Risk identification |
| 17 | Avg salary vs balance by churn | Financial side-by-side |

### Key SQL Findings
- **Germany** churn rate = **32.44%** — double France and Spain
- **German Females** = **39.07%** churn — highest risk segment
- **Age 50-59** = **56.03%** churn — most vulnerable age group
- **4 product** customers = **100%** churn rate
- **Inactive members** churn at **26.85%** vs **14.27%** for active

---

## 📊 Power BI Dashboard — `bank_dashboard.pbit`

### Dashboard Pages

**Page 1 — Overview**
- Total Customers Card (10,000)
- Total Churned Card (2,037)
- Churn Rate % Card (20.37%)
- Customer Churn Distribution — Donut Chart
- Churn Count by Gender — Bar Chart
- Churn Rate % by Gender — Donut Chart
- Churn Rate % by Country — Column Chart
- Filter by Country — Slicer

**Page 2 — Demographics Analysis**
- Churn Rate — Active vs Inactive — Column Chart
- Customer Count by Country and Gender — Stacked Bar
- Churn Rate by Age Group — Column Chart
- Churn Rate by Country — Bar Chart
- Filter by Age Group — Tile Slicer

**Page 3 — Financial Analysis**
- Average Balance by Products & Churn Status — Clustered Column
- Churn Rate % by Products Number — Column Chart
- Churn Rate by Credit Card Ownership — Column Chart
- Average Balance by Churn Status — Column Chart
- Average Salary by Churn Status — Column Chart
- Filter by Churn Status — Slicer
- Filter by Country — Slicer

**Page 4 — Key Insights & Recommendations**
- 5 KPI Cards (Overall, Germany, Age 50-59, Female, Safest Product)
- Top Risk Segments — Table
- Churn Rate by Key Segments — Bar Chart
- Business Recommendations — Text Box
- Filter by Gender — Slicer

### DAX Measures Created
```
Churn Rate % = ROUND(DIVIDE(SUM('customers'[churn]), COUNT('customers'[customer_id])), 4)

Churn Status = IF('customers'[churn] = 1, "Churned", "Not Churned")

Age Group = SWITCH(TRUE(),
    'customers'[age] < 30, "Under 30",
    'customers'[age] <= 39, "30-39",
    'customers'[age] <= 49, "40-49",
    'customers'[age] <= 59, "50-59",
    "60 and Above")

Active Status = IF('customers'[active_member] = 1, "Active", "Inactive")

Credit Card Status = IF('customers'[credit_card] = 1, "Has Card", "No Card")
```

---

## 🔑 Key Findings Summary

| # | Factor | Finding |
|---|--------|---------|
| 1 | **Overall Churn** | 20.37% of customers left the bank |
| 2 | **Age** | Churned avg age = 45 vs non-churned = 37 |
| 3 | **Geography** | Germany churn = 32.44% — double France & Spain |
| 4 | **Gender** | Female churn = 25.07% vs Male = 16.46% |
| 5 | **Products** | 2 products = 7.58% churn, 4 products = 100% churn |
| 6 | **Activity** | Inactive churn = 26.85% vs Active = 14.27% |
| 7 | **Balance** | Churned customers have $18,000 higher avg balance |
| 8 | **Salary** | Almost identical — not a churn predictor |
| 9 | **Highest Risk Segment** | German Female aged 50-59 = 39%+ churn |

---

## 💼 Business Recommendations

1. 🎯 **Target retention campaigns** at German Female customers aged 50-59
2. 💼 **Promote 2-product bundles** — the sweet spot for customer retention
3. 🔔 **Re-engage inactive members** — activity nearly halves churn rate
4. 💰 **Launch premium retention program** — high balance customers are leaving
5. 👩 **Investigate female customer experience** — 25% churn needs urgent attention

---

## ⚙️ How to Run This Project

### Python Notebook
```bash
# Install required libraries
pip install pandas numpy matplotlib seaborn

# Open the notebook
jupyter notebook bank_customer_python_eda.ipynb
```

### SQL Queries
```sql
-- Create database
CREATE DATABASE bank_churn;
USE bank_churn;

-- Import CSV into bank_customer table
-- Then run bank_sql_insight.sql
```

### Power BI Dashboard
1. Open `bank_dashboard.pbit` in Power BI Desktop
2. Connect to your CSV file when prompted
3. Click **Refresh** to load data

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Python** | EDA, Data Visualization |
| **Pandas** | Data Manipulation |
| **Matplotlib / Seaborn** | Charts and Plots |
| **MySQL** | SQL Queries and Analysis |
| **Power BI** | Interactive Dashboard |

---

## 👤 Author

**Project Type:** Data Analytics Portfolio Project
**Domain:** Banking — Customer Churn Analysis
**Skill Level:** Junior / Entry Level Data Analyst

---

*This project demonstrates a complete data analytics workflow:*
*Raw Data → Python EDA → SQL Analysis → Power BI Dashboard → Business Insights*
