--Q6. What is the reorder rate for products that were substituted vs not?

WITH reordered_products AS (
  SELECT
    op.product_id,
    COUNT(*) AS total_orders,
    SUM(op.reordered) AS times_reordered
  FROM order_products_prior op
  GROUP BY op.product_id
),
sub_flagged AS (
  SELECT
    p.product_id,
    CASE
      WHEN s.product_id IS NOT NULL THEN 'Substituted'
      ELSE 'Not Substituted'
    END AS substitution_status
  FROM products p
  LEFT JOIN substitutions s ON p.product_id = s.product_id
)
SELECT
  s.substitution_status,
  ROUND(AVG(r.times_reordered * 1.0 / NULLIF(r.total_orders, 0)), 3) AS avg_reorder_rate
FROM reordered_products r
JOIN sub_flagged s ON r.product_id = s.product_id
GROUP BY s.substitution_status;
