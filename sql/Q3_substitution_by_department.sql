
-- Q3: What departments have the highest substitution rates?

SELECT
  d.department,
  COUNT(s.order_id) AS substitution_count
FROM substitutions s
JOIN products p
  ON s.product_id = p.product_id
JOIN departments d
  ON p.dept_id = d.department_id
GROUP BY d.department
ORDER BY substitution_count DESC;
