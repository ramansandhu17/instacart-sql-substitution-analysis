
--Q8:Who are the top customers affected by substitution?
SELECT
  o.user_id,
  COUNT(*) AS substitutions_count
FROM substitutions s
JOIN orders o ON s.order_id = o.order_id
GROUP BY o.user_id
ORDER BY substitutions_count DESC
LIMIT 10;
