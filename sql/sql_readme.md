# SQL Analysis – Instacart Substitution Analytics

This folder contains all SQL queries developed for the **Instacart Substitution Analytics Project**.  
The goal of this project is to analyze the patterns and impact of product substitutions during order fulfillment and recommend improvements to reduce customer churn and operational inefficiencies.

All queries are written in standard SQL and were executed in DataGrip using the following datasets:
- `orders.csv`
- `order_products__prior.csv`
- `products.csv`
- `departments.csv`
- `aisles.csv`
- Simulated `substitutions.csv` (based on 5–10% of sampled orders)

---

## SQL Query List

| # | File | Question Answered |
|---|------|-------------------|
| 01 | Q1-substitutionrate.sql | What % of orders include a substitution? |
| 02 | Q2_top_substituted_products.sql | What are the top 10 most-substituted products? |
| 03 | Q3_substitution_by_department.sql | What departments have the highest substitution rates? |
| 04 | Q4_substitution_trend_by_day.sql | Are substitutions more likely on certain days of the week? |
| 05 | Q5_reorder_delay_after_substitution.sql | Do customers reorder more slowly after receiving a substitution? |
| 06 | Q6_reorder_rate_substituted_vs_not.sql | What is the reorder rate for substituted vs non-substituted products? |
| 07 | Q7_high_sub_low_reorder_aisles.sql | Which aisles have high substitution and low reorder rate? |
| 08 | Q8_top_customers_affected.sql | Who are the top customers affected by substitution? |

---

## Techniques Used

This SQL analysis includes:

- Multiple table JOINs (inner, left)
- Common Table Expressions (CTEs)
- Window functions (`LAG`, `ROW_NUMBER`)
- CASE logic and conditional aggregation
- Subqueries and grouping
- Data export for Tableau dashboarding

---

## 💾 Output

Each query outputs a `.csv` file for further analysis and dashboard creation in Tableau, stored under:
instacart-sql-substitution-analysis/blob/main/sql
