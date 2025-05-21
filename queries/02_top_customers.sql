--Top Customers by Total Spending
--GOAL: Find the top customers who spent the most money across all orders.

--order details and orders tables
--orders table: order_id, CustomerID, order_date, total_amount
--Order Details table: order_detail_id, order_id, product_id, Quantity, UnitPrice
--Orders.OrderID = `Order Details`.OrderID


--Join the orders and order details tables on OrderID

SELECT Orders.CustomerID, SUM(`Order Details`.Quantity * `Order Details`.UnitPrice) AS total_spending
FROM Orders
JOIN `Order Details` ON Orders.OrderID = `Order Details`.OrderID
GROUP BY Orders.CustomerID
ORDER BY total_spending DESC
LIMIT 10;

--This query retrieves the top 10 customers based on their total spending across all orders.
-