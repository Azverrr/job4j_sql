WITH ItemPerOrder AS (SELECT oi.order_id AS o_id, sum(oi.quantity) AS quantity_total
                      FROM order_items AS oi
                               JOIN orders AS o ON oi.order_id = o.order_id
                      WHERE o.status = 'completed'
                      GROUP BY oi.order_id)
SELECT avg(quantity_total) AS avg_items_per_order
FROM ItemPerOrder