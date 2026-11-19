SELECT * 
FROM orders_mav

SELECT * 
FROM website_sessions

-- What is the total number of unique orders?
SELECT COUNT (DISTINCT order_id) AS total_orders
FROM orders_mav

-- What is the total revenue generated?
SELECT CAST (SUM (price_usd) AS DECIMAL (14,2)) AS total_revenue
FROM orders_mav

-- Which products generate the highest revenue?
SELECT 
	product_name,
	CAST (SUM (price_usd) AS DECIMAL (14,2)) AS total_revenue
FROM orders_mav
	INNER JOIN products
	ON products.product_id = orders_mav.primary_product_id
GROUP BY product_name
ORDER BY total_revenue DESC

-- Which marketing sources generate the most website sessions?
SELECT utm_source,
	COUNT (DISTINCT website_session_id) AS total_sessions
	FROM website_sessions
GROUP BY utm_source
ORDER BY total_sessions DESC

-- Which device type generates the most website traffic?
SELECT 
	device_type,
	COUNT(DISTINCT website_session_id) AS total_sessions
FROM website_sessions
GROUP BY device_type
ORDER BY total_sessions DESC

-- What is the website session-to-order conversion rate?
SELECT
    COUNT(DISTINCT s.website_session_id) AS total_sessions,
    COUNT(DISTINCT o.order_id) AS total_orders,
    CAST(
        COUNT(DISTINCT o.order_id) * 100.0
        / COUNT(DISTINCT s.website_session_id) AS DECIMAL (14,2)
    ) AS conversion_rate
FROM website_sessions AS s
LEFT JOIN orders_mav AS o
    ON s.website_session_id = o.website_session_id

-- What is the total number and value of refunds?
SELECT
COUNT (DISTINCT order_item_refund_id) AS total_refunds,
CAST (SUM (refund_amount_usd) AS DECIMAL(14,2))  AS refund_value
FROM order_item_refunds

-- Which months recorded the highest and lowest revenue?
SELECT
	DATENAME (MONTH , created_at) AS month_name,
	CAST (SUM (price_usd) AS DECIMAL (14,2)) AS total_revenue
FROM orders_mav
GROUP BY DATENAME (MONTH , created_at)
ORDER BY total_revenue DESC

-- TO FIND THE INDIVIDUAL HIGHEST AND LOWEST REVENUE MONTH
-- HIGHEST
SELECT TOP 1
	DATENAME (MONTH , created_at) AS month_name,
	CAST (SUM (price_usd) AS DECIMAL (14,2)) AS total_revenue
FROM orders_mav
GROUP BY DATENAME (MONTH , created_at)
ORDER BY total_revenue DESC

-- LOWEST
SELECT TOP 1
	DATENAME (MONTH , created_at) AS month_name,
	CAST (SUM (price_usd) AS DECIMAL (14,2)) AS total_revenue
FROM orders_mav
GROUP BY DATENAME (MONTH , created_at)
ORDER BY total_revenue ASC

-- What is the average order value?
SELECT 
	COUNT (DISTINCT order_id) AS total_orders,
	SUM (price_usd) AS total_revenue,
	CAST (SUM (price_usd)/COUNT (DISTINCT (order_id)) AS DECIMAL (14,2)) AS average_order_value
FROM orders_mav

