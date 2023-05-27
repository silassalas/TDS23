USE pubs
Select * From Employees

SELECT  distinct F1.FirstName,datepart (year,F1.HireDate) as [ano adimissão] FROM Employees F1, Employees F2 WHERE DATEPART(YEAR,F1.HireDate)= DATEPART(YEAR,F2.HireDate)

use AdventureWorks2012

SELECT * FROM Sales.SalesOrderHeader
SELECT AVG(TotalDue), DATEPART(MONTH,OrderDate) MÊS FROM SALES.SalesOrderHeader
GROUP BY DATEPART(MONTH,OrderDate) ORDER BY 2

SELECT AVG(TotalDue),DATEPART (YEAR,ORDERDATE)  FROM Sales.SalesOrderHeader GROUP BY DATEPART(year,OrderDate) order by 2 desc


Select ProductID,ListPrice From Production.Product  WHERE ListPrice> (SELECT AVG(ListPrice) FROM Production.Product) ORDER BY 2






