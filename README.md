# 🏦 Bank Customer Churn Analysis
## 🚀 End-to-End Data Analysis Project (Python → SQL → Power BI)

---

## 📖 Project Overview

This project delivers a complete end-to-end analysis of **customer churn behavior** for a bank operating across France, Germany, and Spain.

The objective is to analyze:

- 📉 Why customers are leaving the bank
- 🌍 Which regions and segments have the highest churn
- 💰 How financial behavior relates to churn
- 👥 Which customer profiles are at highest risk

The project integrates:

- 🐍 **Data Cleaning & EDA** → Python
- 🗄️ **Business Analysis** → SQL
- 📊 **Interactive Dashboard** → Power BI

💡 The goal is to transform raw customer data into **actionable retention strategies.**

---

## 🎯 Problem Statement

- Analyze customer churn across demographics, geography & financial behavior
- Identify the highest risk customer segments
- Provide data-driven recommendations to reduce churn rate
- Support business decisions with an interactive Power BI dashboard

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python | Data Cleaning & EDA |
| Pandas | Data Manipulation |
| Matplotlib / Seaborn | Data Visualization |
| MySQL | Data Analysis & Insights |
| Power BI | Dashboard & Visualization |
| DAX | Calculated Measures & KPIs |

---

## 📊 Dataset Description

| Detail | Info |
|--------|------|
| 📁 Dataset | Bank Customer Churn Prediction |
| 📌 Records | 10,000 customers |
| 📌 Features | 12 columns |
| 🌍 Countries | France, Germany, Spain |

### 🔹 Data Categories

| Category | Columns |
|----------|---------|
| 👤 Demographics | Age, Gender, Country |
| 💳 Financial | Balance, Credit Score, Estimated Salary |
| 🏦 Banking Behavior | Products Number, Credit Card, Tenure |
| 🎯 Target | Churn (0 = Stayed, 1 = Left) |

---

## 🧹 Data Cleaning (Python)

- 🔍 Inspected dataset using `info()`, `describe()`, `isnull()`
- 🗑️ Removed duplicate records
- 📊 Analyzed churn distribution across all features
- 🔤 Standardized column names (lowercase + underscores)

---

## 📊 Key KPIs

| Metric | Value |
|--------|-------|
| 👥 Total Customers | 10,000 |
| ❌ Total Churned | 2,037 |
| 📉 Overall Churn Rate | 20.37% |
| 🇩🇪 Germany Churn Rate | 32.44% |
| 👩 Female Churn Rate | 25.07% |
| 👨 Male Churn Rate | 16.46% |

---

## 🔍 Key Insights

### 👥 Demographics
- **Age** is the strongest churn predictor:
  - Churned avg age → **45 years**
  - Not churned avg age → **37 years**
- **Age 50–59** group has **56.03%** churn — most vulnerable segment

### 🌍 Geographic Performance
- 🇩🇪 **Germany** churn = **32.44%** — double France & Spain
- **German Females** = **39.07%** churn — highest risk segment

### 💳 Product & Activity Behavior
- **2 products** = **7.58%** churn — safest segment
- **4 products** = **100%** churn rate
- **Inactive members** churn at **26.85%** vs **14.27%** for active members

### 💰 Financial Insights
- Churned customers have **$18,000 higher** average balance
- **Salary** shows almost no difference — not a churn predictor
- **Credit score** also shows no meaningful impact on churn

---

## 💻 SQL Analysis Highlights

This project includes **17 advanced SQL queries** to extract business insights:

| Query Type | Description |
|------------|-------------|
| 📊 Churn Analysis | Overall churn rate & breakdown |
| 🌍 Geographic Risk | Churn rate by country & combined segments |
| 👥 Customer Intelligence | Top 10 at-risk customers identification |
| 📦 Product Analysis | Churn rate by number of products |
| 💰 Financial Analysis | Avg balance & salary comparison by churn |

---

## 📈 Dashboard Preview

<!-- ADD YOUR DASHBOARD SCREENSHOTS HERE -->

---

## 📊 Dashboard Pages

**Page 1 — Overview**
- Total Customers, Churned & Churn Rate KPI Cards
- Churn Distribution, Gender & Country breakdown

**Page 2 — Demographics Analysis**
- Churn by Age Group, Active vs Inactive & Country

**Page 3 — Financial Analysis**
- Balance, Products & Credit Card impact on churn

**Page 4 — Key Insights & Recommendations**
- Top risk segments table & business recommendations
<br>
<img width="413" height="245" alt="Screenshot 2026-05-20 115507" src="https://github.com/user-attachments/assets/49ec83a6-ff56-456b-8b05-5f6989dfc899" />
<br>
<img width="413" height="240" alt="Screenshot 2026-05-20 115521" src="https://github.com/user-attachments/assets/bdb4ba87-c0be-471e-90e4-fd4de1bc3991" />
<br>
<img width="413" height="239" alt="Screenshot 2026-05-20 115533" src="https://github.com/user-attachments/assets/e818d0a9-8bbf-4854-89e0-a68e182e8db7" />
<br>
<img width="409" height="236" alt="Screenshot 2026-05-20 115548" src="https://github.com/user-attachments/assets/f8631135-bb88-45c5-b6ea-18a36b662e7f" />

---

## 💡 Business Recommendations

| # | Recommendation |
|---|----------------|
| 🎯 1 | Target retention campaigns at **German Female** customers aged 50–59 |
| 💼 2 | Promote **2-product bundles** — the sweet spot for retention |
| 🔔 3 | Re-engage **inactive members** — activity nearly halves churn rate |
| 💰 4 | Launch **premium retention program** for high balance customers |
| 👩 5 | Investigate **female customer experience** — 25% churn needs attention |

---

## 📁 Project Structure

```
📦 bank-customer-churn-analysis
 ┣ 📁 data/
 ┃  ┗ 📄 bank_customer_churn.csv
 ┣ 📁 notebooks/
 ┃  ┗ 📓 bank_customer_python_eda.ipynb
 ┣ 📁 sql/
 ┃  ┗ 🗄️ bank_sql_insight.sql
 ┣ 📁 dashboard/
 ┃  ┣ 📊 bank_dashboard.pbit
 ┃  ┗ 📄 bank_dashboard_pdf.pdf
 ┗ 📝 README.md
```

---

## 🚀 How to Run

```bash
# 1. Clone the repository
git clone https://github.com/sunitaprajapati6561-hue/bank-customer-churn-analysis

# 2. Install dependencies
pip install pandas numpy matplotlib seaborn

# 3. Run the EDA notebook
jupyter notebook notebooks/bank_customer_python_eda.ipynb

# 4. Execute SQL queries
# Open sql/bank_sql_insight.sql in MySQL Workbench

# 5. Open Power BI Dashboard
# Open dashboard/bank_dashboard.pbit in Power BI Desktop
# Connect to CSV file when prompted → click Refresh
```

---

## 🧑‍💻 Author

**Vikas Prajapati**
📌 Aspiring Data Analyst
📌 Python | SQL | Power BI | Excel

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/vikas-prajapati-0ba9302ba/)
[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:sunitaprajapati6561@gmail.com)
