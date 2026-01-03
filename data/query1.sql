/* q1_products_per_category.sql */
SELECT 
    pc.Name AS CategoryName,
    COUNT(p.ProductID) AS ProductCount
FROM Production.ProductCategory AS pc
JOIN Production.ProductSubcategory AS ps 
    ON pc.ProductCategoryID = ps.ProductCategoryID
JOIN Production.Product AS p 
    ON ps.ProductSubcategoryID = p.ProductSubcategoryID
GROUP BY pc.Name
ORDER BY ProductCount DESC;