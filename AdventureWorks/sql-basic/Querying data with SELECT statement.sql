/*
AdventureWorks OLTP data base used
---------------------------------------------------
Querying data with SELECT statement
---------------------------------------------------
*/
SELECT 'Hello','World'; --returns two columns named Hello and World from select list

SELECT 'Hello' as firstname, 'World' as lastname;  -- aliasing column name

--FROM clause --> defines table you want to query
SELECT LoginID FROM HumanResources.Employee;

--with Aliasing which is useful when querying multiple tables at one time
SELECT E.LoginID FROM HumanResources.Employee E;
SELECT E.LoginID, P.Rate FROM HumanResources.Employee E,HumanResources.EmployeePayHistory P;

-- Constraint the result set by DISTINCT, NOT DISTINCT and WHERE
--DISTINCT
SELECT DISTINCT OrganizationLevel FROM  HumanResources.Employee;

--NOT DISTINCT is default there is no command for that
SELECT OrganizationLevel FROM  HumanResources.Employee;

--WHERE 
SELECT * FROM  HumanResources.Employee WHERE OrganizationLevel = 1;
