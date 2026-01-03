/* query7.sql */
SELECT 
    st.Name AS RegionName,
    CASE 
        WHEN c.StoreID IS NOT NULL THEN 'Store' 
        ELSE 'Individual' 
    END AS CustomerType,
    AVG(soh.SubTotal) AS AvgOrderValue
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c 
    ON soh.CustomerID = c.CustomerID
JOIN Sales.SalesTerritory AS st 
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name, CASE WHEN c.StoreID IS NOT NULL THEN 'Store' ELSE 'Individual' END;