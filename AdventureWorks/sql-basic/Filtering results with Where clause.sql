/*
Filtering results with WHERE clause 

WHERE:
	constraints the result set
	comes after FROM clause
	contains boolean expressions
	only matching rows are in result set
*/
SELECT * FROM HumanResources.Employee WHERE OrganizationLevel = 1;

/*
boolean Operators 
=
<> → Not equal to
<
>
<=
>=
*/
SELECT * FROM HumanResources.Employee WHERE Birthdate < '1969-01-01';
SELECT * FROM HumanResources.Employee WHERE Gender <> 'M';

--complex questions….additional keywords required to chain multiple expressions

/*
AND
	combine two expressions
	if both true, row is included
*/
SELECT * FROM HumanResources.Employee WHERE Gender <> 'M' AND MaritalStatus = 'S';

/*
OR
	combines two expressions 
	either or both evaluate true, row is included
*/
SELECT * FROM HumanResources.Employee WHERE VacationHours > 90 OR SickLeaveHours> 90;

/*
BETWEEN
	boolean operator
	acts on column value and two other values
	>=AND<=
*/
SELECT * FROM HumanResources.Employee WHERE BusinessEntityID BETWEEN 23 AND 50;

/*	
LIKE
	fuzzy verion of =
	strings and special characters inside
	if match is true , row is returned
*/
SELECT * FROM HumanResources.Employee WHERE LoginID LIKE '%ma%';

/*
IN
	like a multivalue = operator
	list of potential values
*/
SELECT * FROM HumanResources.Employee WHERE JobTitle IN('Marketing Specialist','Production Control Manager');

/*
 IS
	special operator
	equals operator but only for NULL
*/
SELECT * FROM HumanResources.Employee WHERE CurrentFlag IS NULL;
--no NULL values

/*
IS NOT
	not equals for NULL only
*/
SELECT * FROM HumanResources.Employee WHERE CurrentFlag IS NOT NULL;