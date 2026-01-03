/* query3.sql */
SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS OrderMonth,
    SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY OrderMonth;