USE AdventureWorks2012
SELECT * FROM Person.Person
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Production.Product
where weight > 500 and weight <= 700

SELECT * FROM HumanResources.Employee where SalariedFlag= 1 and maritalstatus = 'm'
select * from HumanResources.Employee where BirthDate <'1982/01/01'

select * from Person.Person where FirstName = 'peter' and lastname = 'krebs'
select * from Person.EmailAddress where BusinessEntityID = 26

select * from Person.Person  where BusinessEntityID = 26

Select COUNT('') as 'quant.produtos' from Production.Product 
select distinct name from Production.Product
select distinct title from Person.Person

Select * From Production.PRODUCT WHERE ListPrice >=1000 AND ListPrice <= 1500

select LISTPRICE FROM Production.Product WHERE ListPrice BETWEEN 1000 AND 1500

SELECT * from HumanResources.Employee  where HireDate between '2009/01/01' and '2010/01/01'

Select * From Person.Person where BusinessEntityID in ('5','111','23')
select * from Person.Person where FirstName like  'Re%'


Select count('') from Production.Product where  ListPrice > 1500 
Select count ('') from Person.Person where LastName like 'p%'
select count(distinct city) from person.Address

SELECT COUNT (*) AS 'PRODUTOS VERMELHOS' FROM Production.Product  where color = 'RED' AND ListPrice BETWEEN 500 AND 1000

SELECT COUNT (NAME) FROM Production.Product WHERE NAME LIKE '%ROAD%'

SELECT TOP 10 * FROM SALES.SalesOrderDetail
select * From  Sales.SalesOrderDetail

select AVG (LINETOTAL) as 'MAIOR VENDAS'  from Sales.SalesOrderDetail
SELECT FirstName, Count (FirstName) From Person.Person GROUP BY FirstName
SELECT SpecialOfferID, Sum(UnitPrice) AS 'TOTAL VENDAS' FROM Sales.SalesOrderDetail Group By SpecialOfferID ORDER BY Sum(UnitPrice)DESC
SELECT  ProductID, COUNT (ProductID) AS 'Produtos até hoje'  FROM Sales.SalesOrderDetail GROUP BY ProductID

Select Color,AVG (LISTPRICE) FROM Production.Product GROUP BY COLOR 
SELECT  MIDDLENAME,COUNT(MIDDLENAME) FROM Person.Person GROUP BY MIDDLENAME ORDER BY MIDDLENAME


SELECT ProductID, AVG(OrderQty) FROM SALES.SALESORDERDETAIL GROUP BY PRODUCTID Order BY SUM(LineTotal) DESC
SELECT ProductID,COUNT (ProductID) AS QTDE,AVG(OrderQty)  FROM Production.WorkOrder GROUP BY ProductID

SELECT FirstName, Count(FirstName) AS QTDE From Person.Person where FirstName like 'A&' Group BY FirstName HAVING Count(FirstName) > 10

SELECT ProductID, SUM(LineTotal) AS 'TOTAL VENDAS PRODUTO' FROM SALES.SalesOrderDetail GROUP BY ProductID HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

SELECT ProductID, AVG (LineTotal) FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING AVG(LineTotal) <10000



