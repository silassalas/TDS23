USE AdventureWorks2012

SELECT  FirstName,Title,MiddleName FROM Person.Person where Title = 'Mr.' AND MiddleName IS NOT NULL

UNION
Select FirstName,Title,MiddleName  FROM Person.Person where MiddleName = 'a' and Title is NOT NULL --AND MiddleName IS NOT NULL order by FirstName asc



  