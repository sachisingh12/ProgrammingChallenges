/* Question 1 */

SELECT DATE(date) AS day,
       SUM(impressions) AS total_impressions
FROM marketing_data
GROUP BY DATE(date);


/* Question 2 */

SELECT state, SUM(revenue) AS total_revenue
FROM website_revenue
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 3;


/* Question 3 */

SELECT campaign_id,
       SUM(cost) AS total_cost,
       SUM(impressions) AS total_impressions,
       SUM(clicks) AS total_clicks,
       SUM(revenue) AS total_revenue
FROM marketing_data
GROUP BY campaign_id;

/* Question 4 */

SELECT state, SUM(conversions) AS total_conversions
FROM marketing_data
WHERE campaign_id = 'Campaign5'
GROUP BY state
ORDER BY total_conversions DESC
LIMIT 1;

