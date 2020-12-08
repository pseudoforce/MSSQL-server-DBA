/*
shaping results using ORDER BY or GROUP BY clause
*/

/*
ORDER BY:
	allows sorting the result set
	after the WHERE clause
	specify one or more columns
	seperate columns by commas
	default order is ASC
	use DESC for descending
*/

SELECT e.NationalIDNumber, e.LoginID
FROM [HumanResources].[Employee] e
ORDER BY e.LoginID; -- default ASC/ ascending

SELECT e.NationalIDNumber, e.LoginID
FROM [HumanResources].[Employee] e
ORDER BY e.LoginID DESC; -- specify descending

/*
SET functions
	computes new values from column values
	use in place of columns in SELECT clause
	passes column name to function
	help us ask more intersting questions
	often used with a DISTINCT qualifier

	COUNT > count of column specified(includes NULL if * is used)
	MAX > maximum value of a column(does not include NULL value)
	MIN > minimum value of a column(does not include NULL value)
	AVG > average of all values of the column(does not include NULL values, only numeric column)
	SUM > sum of all the values of the column(does not include NULL values, only numeric column)
*/

-- COUNT
SELECT COUNT(e.MaritalStatus) AS 'SingleCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e
WHERE MaritalStatus = 'S';

--MAX
SELECT MAX(e.VacationHours) AS 'VacationHoursCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e;

--MIN
SELECT MIN(e.VacationHours) AS 'VacationHoursCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e;

--AVG
SELECT AVG(e.VacationHours) AS 'AvgVacationHoursCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e;

--SUM
SELECT SUM(e.VacationHours) AS 'SumVacationHoursCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e;

/*
SET functions + Qualifiers
	often used together
	add inside the function
	run against DISTINCT column values
*/
SELECT COUNT(DISTINCT e.VacationHours) AS 'DistinctVacationHoursCount'
FROM [AdventureWorks2019].[HumanResources].[Employee] e;

-- how to do for same values?

/*
GROUP BY:
	allows multiple columns with a SET function
	break results into subsets
	runs set function against each subset
	result set returns 1 row per subset
	subset is dictated by column in GROUP BY
	column must appear in the SELECT list
	appears after FROM and/or WHERE clause
*/

SELECT COUNT(e.VacationHours) AS 'VacationHoursCount', e.VacationHours
FROM [AdventureWorks2019].[HumanResources].[Employee] e
GROUP BY e.VacationHours;
--  same number of vacation hours

/*
HAVING
	works like WHERE works against SELECT
	HAVING works against GROUP BY
*/
SELECT COUNT(e.VacationHours) AS 'VacationHoursCount', e.VacationHours
FROM [AdventureWorks2019].[HumanResources].[Employee] e
GROUP BY e.VacationHours
HAVING e.VacationHours >= 50;
 -- cant use the VacationHoursCount in HAVING clause


