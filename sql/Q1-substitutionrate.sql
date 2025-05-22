--What % of orders include a substitution?

SELECT ROUND(COUNT(distinct s.order_id)*100.0/COUNT(distinct o.order_id),2) AS substitution_percentage
    from orders o left join substitutions s
on o.order_id=s.order_id
