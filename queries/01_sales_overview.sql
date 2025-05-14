-- THIS This query calculates the total revenue per month.

SELECT 
  strftime('%Y-%m', OrderDate) AS month,
  SUM(UnitPrice * Quantity) AS total_revenue
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
GROUP BY month
ORDER BY month;