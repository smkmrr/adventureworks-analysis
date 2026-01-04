SELECT 
    DATEFROMPARTS(YEAR(OrderDate), MONTH(OrderDate), 1) AS OrderDate, 
    SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY OrderDate;