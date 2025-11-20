/*Ranking Analysis*/
--Find the top 3 Products
SELECT TOP 3
P.ProductName,
SUM(S.Sales) AS TotalSales,
ROW_NUMBER () OVER ( ORDER BY SUM(S.Sales) DESC) AS ProductRank
FROM Gold.Fact_Sales AS S
LEFT JOIN Gold.Dim_Products AS P
ON S.ProductID = P.ProductID
GROUP BY P.ProductName

--Find the Bottom 3 Products
SELECT TOP 3
P.ProductName,
SUM(S.Sales) AS TotalSales,
ROW_NUMBER () OVER ( ORDER BY SUM(S.Sales) ASC) AS ProductRank
FROM Gold.Fact_Sales AS S
LEFT JOIN Gold.Dim_Products AS P
ON S.ProductID = P.ProductID
GROUP BY P.ProductName
