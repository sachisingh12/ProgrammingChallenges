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

/* Question 5

Campaign2 is the most efficient campaign because it has a total revenue of 1800.00 and a total cost of 1200.00.
The ROI for Campaign2 is calculated as (1800.00 - 1200.00) / 1200.00 = 0.50, indicating a 50% ROI.

I ran this query to get the answer: 

SELECT
    c.id AS campaign_id,
    c.name AS campaign_name,
    SUM(m.revenue) AS total_revenue,
    SUM(m.cost) AS total_cost,
    (SUM(m.revenue) - SUM(m.cost)) / SUM(m.cost) AS roi
FROM marketing_data AS m
JOIN campaign_info AS c ON m.campaign_id = c.id
GROUP BY c.id, c.name
ORDER BY roi DESC
LIMIT 1;

*/


/* Question 6 */
