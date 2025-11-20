
/*Date Exploration: Check the Boundaries of the date*/
SELECT MAX(OrderDate) AS LatestDate FROM Gold.Fact_Sales;
SELECT MIN(OrderDate)AS EarliestDate  FROM Gold.Fact_Sales ;
SELECT DATEDIFF(Year,MIN(OrderDate),MAX(OrderDate)) AS YerasInBusiness FROM Gold.Fact_Sales
