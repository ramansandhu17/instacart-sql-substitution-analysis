--Q5. Do customers reorder more slowly after receiving a substitution?

WITH customer_subs AS (
  SELECT DISTINCT user_id
  FROM orders o
  JOIN substitutions s ON o.order_id = s.order_id
),
reorders AS (
  SELECT user_id, days_since_p_order
  FROM orders
  WHERE days_since_p_order IS NOT NULL
)
SELECT
  CASE
    WHEN cs.user_id IS NOT NULL THEN 'Substituted'
    ELSE 'Not Substituted'
  END AS substitution_status,
  ROUND(AVG(r.days_since_p_order), 2) AS avg_days_to_reorder
FROM reorders r
LEFT JOIN customer_subs cs ON r.user_id = cs.user_id
GROUP BY substitution_status;
