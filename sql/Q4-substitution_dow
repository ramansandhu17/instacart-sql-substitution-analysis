--Question 4: Are substitutions more likely on certain days of the week?

SELECT
  o.order_dow,
  ROUND(COUNT(DISTINCT s.order_id) * 100.0 / COUNT(DISTINCT o.order_id), 2) AS substitution_rate_pct
FROM orders o
LEFT JOIN substitutions s
  ON o.order_id = s.order_id
GROUP BY o.order_dow
ORDER BY o.order_dow;
