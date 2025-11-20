
/*Explore the Measures;FINDING THE Key Metrics of our business*/
--Find the Total Sales
SELECT SUM(Sales) AS TotalSales FROM Gold.Fact_Sales
--Find the number of customesr
SELECT DISTINCT COUNT(CustomerID) AS TotalCustomers FROM Gold.Fact_Sales
--Find Total ProducTS
SELECT COUNT(DISTINCT OrderID) AS TotalProducts FROM Gold.Fact_Sales;
--Find the Average Cost
SELECT AVG(Cost) AS AvgCost  FROM Gold.Fact_Sales
--Find the Total Cost
SELECT SUM(Cost) AS TotalCost  FROM Gold.Fact_Sales;
--Find the Tola Gross Profit
SELECT SUM(GrossProfit) AS TotalGP  FROM Gold.Fact_Sales

/*Create a Report of all the measures in the buusiness*/
SELECT 'Total Sales' AS MeasureName, SUM(Sales) AS MeasireValue FROM Gold.Fact_Sales
UNION ALL
SELECT DISTINCT  'TotalCustomers'AS MeasureName,COUNT(CustomerID) AS MeasireValue FROM Gold.Fact_Sales
UNION ALL
SELECT 'TotalProducts'AS MeasureName,COUNT(DISTINCT OrderID) AS MeasireValue  FROM Gold.Fact_Sales
UNION ALL
SELECT 'AvgCosT'AS MeasureName,AVG(Cost) AS MeasireValue  FROM Gold.Fact_Sales
UNION ALL
SELECT  'TotalCost'AS MeasureName,SUM(Cost) AS MeasireValue  FROM Gold.Fact_Sales
UNION ALL
SELECT 'TotalGP' AS MeasureName,SUM(GrossProfit) AS MeasireValue  FROM Gold.Fact_Sales
