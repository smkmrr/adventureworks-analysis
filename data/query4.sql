/* query4.sql */
SELECT 
    YEAR(OrderDate) AS OrderYear,
    SUM(SubTotal) AS TotalSales,
    COUNT(SalesOrderID) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear;