use amazon_db;

-- .Objective Two

-- 1.Order Cancellation Rate by State
SELECT
    c.state,
    COUNT(*) AS total_orders,
    SUM(CASE 
            WHEN o.order_status = 'CANCELLED' THEN 1 
            ELSE 0 
        END) AS cancelled_orders,
    ROUND(
        SUM(CASE 
                WHEN o.order_status = 'CANCELLED' THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate_percentage
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.state
ORDER BY cancellation_rate_percentage DESC;


-- 2.Revenue Contribution by State 
SELECT
    c.state,
    ROUND(SUM(oi.quantity * oi.price_per_unit), 2) AS total_revenue,
    ROUND(
        SUM(oi.quantity * oi.price_per_unit) * 100.0
        / SUM(SUM(oi.quantity * oi.price_per_unit)) OVER (),
        2
    ) AS revenue_percentage
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN orders_items oi
    ON o.order_id = oi.order_id
GROUP BY c.state
ORDER BY total_revenue DESC;

-- 3.Average Delivery Time (Days) by Shipping Provider.

SELECT
    s.shipping_provider,
    ROUND(
        AVG(DATEDIFF(s.shipping_date, o.order_date)),
        2
    ) AS avg_delivery_days
FROM shipping s
JOIN orders o
    ON s.order_id = o.order_id
WHERE s.shipping_date IS NOT NULL
GROUP BY s.shipping_provider
ORDER BY avg_delivery_days;
