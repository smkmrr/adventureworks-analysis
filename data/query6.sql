/* query6.sql */
SELECT 
    st.Name AS RegionName,
    SUM(soh.SubTotal) AS TotalSales,
    COUNT(DISTINCT soh.CustomerID) AS UniqueCustomers
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c 
    ON soh.CustomerID = c.CustomerID
JOIN Sales.SalesTerritory AS st 
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSales DESC;