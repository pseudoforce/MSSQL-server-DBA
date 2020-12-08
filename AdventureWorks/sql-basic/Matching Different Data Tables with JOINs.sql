/*
Matching Different Data Tables with JOINs
*/

/*

JOIN
	merges multiple table into one result
	FROM clause includes the tables
	seperates each table with a comma
	WHERE clause is typically included
	Expression with columns from each tabke
	different kind of joint
*/

/*
	CROSS JOIN
		simplest JOIN
		all rows from both tables
		no WHERE clause
		least useful
		inefficient
		Cartesian product
		CROSS keyword implied
		bad practice
*/
SELECT e.LoginID, p.Rate
FROM [HumanResources].[Employee] e, [HumanResources].[EmployeePayHistory] p;
-- bad practice

/*
INNER JOIN
	most typical JOIN
	emphasizes relational nature of database
	matches column in first table to second
	primary key to foreign key is most common
*/

SELECT e.LoginID, p.Rate
FROM [HumanResources].[Employee] e
INNER JOIN
[HumanResources].[EmployeePayHistory] p
ON
e.BusinessEntityID = p.BusinessEntityID;
--primary key and foriegn key are same in every table namely BusinessEntityID

/*
OUTER JOIN
	INNER JOIN doesn't deal with NULL values
	OUTER JOIN works even when no match
	NULL columns if no match in second table
	FULL OUTER JOIN returns all joined rows
	NULL when no match in either table
*/



/*
LEFT OUTER JOIN
	Another NULL-related JOIN
	All rows from left side will be returned
	NULL for non-matching right side rows
*/


/*
RIGHT OUTER JOIN
	Another NULL-related JOIN
	All rows from right side will be returned
	NULL for non-matching left side rows
*/

/*
FULL OUTER JOIN
	Merged result of RIGHT OUTER JOIN and LEFT OUTER JOIN
	NOT AVAILABLE in some DBMS so use UNION of RIGHT and LEFT OUTER JOIN as a workaround
*/

/*
SELF JOIN
	you can JOIN a table to itself
	odd but sometimes useful
	no special syntax same table on left and right side of JOIN
	useful when table contains hierarchial data
*/