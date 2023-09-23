/* Question 1 */

SELECT DATE(date) AS day,
       SUM(impressions) AS total_impressions
FROM marketing_data
GROUP BY DATE(date);


/* Question 2 */


