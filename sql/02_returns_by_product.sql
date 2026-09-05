-- RMA Return Analysis
-- Returns by Product Type
-- MySQL

-- Calculate the percentage of total RMA records
-- represented by each product.

SELECT
    Orders.SKU AS SKU,
    Orders.Description AS Description,
    COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM RMA) AS Percentage
FROM RMA
INNER JOIN Orders
    ON Orders.OrderID = RMA.OrderID
GROUP BY
    Orders.SKU,
    Orders.Description
ORDER BY Percentage DESC;
