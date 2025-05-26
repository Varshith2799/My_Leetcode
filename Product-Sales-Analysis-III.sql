# Write your MySQL query statement below
SELECT S.product_id, S.year AS first_year, S.quantity, S.price
FROM SALES S
WHERE (product_id , year) in (SELECT product_id , MIN(year) FROM Sales GROUP BY product_id)