/* query2.sql */
SELECT 
    pc.Name AS CategoryName,
    SUM(sod.LineTotal) AS TotalSales
FROM Production.ProductCategory AS pc
JOIN Production.ProductSubcategory AS ps 
    ON pc.ProductCategoryID = ps.ProductCategoryID
JOIN Production.Product AS p 
    ON ps.ProductSubcategoryID = p.ProductSubcategoryID
JOIN Sales.SalesOrderDetail AS sod 
    ON p.ProductID = sod.ProductID
GROUP BY pc.Name
ORDER BY TotalSales DESC;