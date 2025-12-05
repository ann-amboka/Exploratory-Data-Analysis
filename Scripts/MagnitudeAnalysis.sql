/* Magnitude Analysis*/
--Find Total Sales Per Country
SELECT Country, SUM(Sales*Units) AS TotalSalesByCountry FROM Gold.Fact_Sales GROUP BY Country ORDER BY TotalSalesByCountry DESC
;
--Find Total Sales By Region
SELECT Region, SUM(Sales*Units) AS TotalSalesByRegion FROM Gold.Fact_Sales GROUP BY Region ORDER BY TotalSalesByRegion DESC
;
--Find Total Sales BY Division
SELECT
P.Division,
SUM(S.Sales*S.Units) AS TotalSalesByDivison
FROM Gold.Fact_Sales AS S
LEFT JOIN Gold.Dim_Products AS P
ON S.ProductID = P.ProductID
GROUP BY P.Division
ORDER BY TotalSalesByDivison DESC
;
--Find Total Sales BY Factory
SELECT
P.Factory,
SUM(S.Sales*S.Units) AS TotalSalesByFactory
FROM Gold.Fact_Sales AS S
LEFT JOIN Gold.Dim_Products AS P
ON S.ProductID = P.ProductID
GROUP BY P.Factory
ORDER BY TotalSalesByFactory DESC

;
--Find The AVERAGE Cost By Product
SELECT
P.ProductName,
AVG(S.Cost*S.Units) AS AvgSales
FROM Gold.Fact_Sales AS S
LEFT JOIN Gold.Dim_Products AS P
ON S.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY AvgSales DESC

--Find Tptal Orders By Country
SELECT Country, COUNT(OrderID) AS TotalOrdersByCountry FROM Gold.Fact_Sales GROUP BY Country ORDER BY TotalOrdersByCountry DESC
SELECT Region, COUNT(OrderID) AS TotalOrdersByRegion FROM Gold.Fact_Sales GROUP BY Region ORDER BY TotalOrdersByRegion DESC
