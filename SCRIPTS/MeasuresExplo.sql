
/*Explore the Measures;FINDING THE Key Metrics of our business*/
--Find the Total Sales
SELECT SUM(Sales*Units) AS TotalSales FROM Gold.Fact_Sales
--Find the number of customers
SELECT DISTINCT COUNT(CustomerID) AS TotalCustomers FROM Gold.Fact_Sales
--Find Total Products
SELECT COUNT(DISTINCT OrderID) AS TotalProducts FROM Gold.Fact_Sales;
--Find the Average Cost
SELECT AVG(Cost*Units) AS AvgCost  FROM Gold.Fact_Sales
--Find the Total Cost
SELECT SUM(Cost*Units) AS TotalCost  FROM Gold.Fact_Sales;
--Find the Tola Gross Profit
SELECT SUM(GrossProfit*Units) AS TotalGP  FROM Gold.Fact_Sales
;
/*Create a Report of all the measures in the business*/
SELECT 'Total Sales' AS MeasureName, SUM(Sales*Units) AS MeasureValue FROM Gold.Fact_Sales
UNION ALL
SELECT DISTINCT  'TotalCustomers'AS MeasureName,COUNT(CustomerID) AS MeasireValue FROM Gold.Fact_Sales
UNION ALL
SELECT 'TotalProducts'AS MeasureName,COUNT(DISTINCT OrderID) AS MeasireValue  FROM Gold.Fact_Sales
UNION ALL
SELECT 'AvgCosT'AS MeasureName,AVG(Cost*Units) AS MeasureValue  FROM Gold.Fact_Sales
UNION ALL
SELECT  'TotalCost'AS MeasureName,SUM(Cost*Units) AS MeasureValue  FROM Gold.Fact_Sales
UNION ALL
SELECT 'TotalGP' AS MeasureName,SUM(GrossProfit*Units) AS MeasureValue  FROM Gold.Fact_Sales
