Select p.product_name,
       count(*) as substitutions_count
    from substitutions s join products p on s.product_id=p.product_id
group by p.product_name
order by substitutions_count desc
limit 10;
