# Write your MySQL query statement below
SELECT P.product_id,IFNULL(ROUND(SUM( P.Price * U.Units ) / SUM( U.Units ),2),0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U ON P.product_id = U.product_id AND U.purchase_date BETWEEN P.Start_date and P.end_date
GROUP BY P.product_id;