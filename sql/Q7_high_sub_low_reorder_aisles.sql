
--Q7. Which aisles have high substitution and low reorder rate?
WITH subs AS (
  SELECT s.product_id, COUNT(*) AS sub_count
  FROM substitutions s
  GROUP BY s.product_id
),
reorders AS (
  SELECT product_id, SUM(reordered) AS times_reordered, COUNT(*) AS total_orders
  FROM order_products_prior
  GROUP BY product_id
),
aisle_stats AS (
  SELECT
    a.aisle,
    SUM(COALESCE(s.sub_count, 0)) AS total_subs,
    ROUND(AVG(COALESCE(r.times_reordered * 1.0 / NULLIF(r.total_orders, 0), 0)), 3) AS avg_reorder_rate
  FROM products p
  JOIN aisles a ON p.a_id = a.aisle_id
  LEFT JOIN subs s ON p.product_id = s.product_id
  LEFT JOIN reorders r ON p.product_id = r.product_id
  GROUP BY a.aisle
)
SELECT *
FROM aisle_stats
ORDER BY total_subs DESC, avg_reorder_rate ASC
LIMIT 10;
