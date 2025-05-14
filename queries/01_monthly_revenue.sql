--What is the total revenue earned each month?
--join by OrderID
SELECT 
  strftime('%Y-%m', Orders.OrderDate) AS month,
  ROUND(SUM("Order Details".UnitPrice * "Order Details".Quantity), 2) AS total_revenue
FROM Orders
JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID
GROUP BY month
ORDER BY month;