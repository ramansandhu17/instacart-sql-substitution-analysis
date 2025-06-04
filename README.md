# Instacart Substitution Analysis

**Tools Used:** SQL, Tableau  
**Project Type:** Data Analysis + Dashboard Design  
**Skills Demonstrated:** Data storytelling, dashboard building, cross-sectional analysis

---

## Overview

This project analyzes product substitution patterns using Instacart order data. Substitutions occur when a product is out of stock and a replacement is made. The dashboard visualizes trends across:

- Days of the week
- Departments
- Top substituted products
- User-level substitution frequency
- Reorder rates of substituted vs. non-substituted items

---

## Key Insights

- **Substitution rates peak on weekends** (especially Sunday & Saturday), likely due to higher demand.
- **Produce and dairy** departments lead in substitution volume — indicating potential inventory stress points.
- **Bananas, berries, and avocados** are the most frequently substituted products.
- **Some users experience substitutions more often**, potentially leading to dissatisfaction or churn.
- **Substituted items are reordered more** than non-substituted ones — suggesting users accept or even prefer some replacements.

---

## Design Notes

Each visualization was built from independently aggregated datasets. Because of this, **global filters were not applied**, and **each view operates with local context**. Instead, the dashboard design emphasizes:

- Clear layout
- Annotated insights
- Strong visual storytelling
- Realistic handling of unjoinable datasets

---

## Deliverables

- 📊 Tableau Dashboard: https://public.tableau.com/views/InstacartSubstitutionTrendsDashboard/InstacartSubstitutionDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
- 📝 SQL Queries: [`/sql/`](./sql)
- 📁 Aggregated CSVs: [`/data/`](./data)

---



