-- RMA Return Analysis
-- Returns by State
-- MySQL

-- Analyze the number of returned products by state.
-- Customers are joined to Orders and RMA using their
-- related primary and foreign key fields.

SELECT
    Customers.State AS STATE,
    COUNT(*) AS RETURN_FREQUENCY
FROM RMA
INNER JOIN Orders
    ON Orders.OrderID = RMA.OrderID
INNER JOIN Customers
    ON Customers.CustomerID = Orders.CustomerID
GROUP BY STATE
ORDER BY RETURN_FREQUENCY DESC;
