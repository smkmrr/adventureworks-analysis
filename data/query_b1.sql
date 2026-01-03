/* query_b1.sql */
SELECT 
    p.Name AS ProductName,
    pc.Name AS CategoryName,
    ps.Name AS ProductSubcategoryName,
    SUM(sod.OrderQty) AS TotalQuantity,
    SUM(sod.LineTotal) AS TotalRevenue,
    SUM(sod.OrderQty * p.StandardCost) AS TotalCost,
    SUM(sod.LineTotal - (sod.OrderQty * p.StandardCost)) AS TotalProfit
FROM Sales.SalesOrderDetail AS sod
JOIN Production.Product AS p 
    ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory AS ps 
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory AS pc 
    ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.Name, pc.Name, ps.Name
HAVING SUM(sod.LineTotal) > 0; -- Only show products that have actually sold