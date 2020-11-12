/*
 -----------SQL Basics------------------
 this contains basic IUD commands for SQL using AdventureWorks OLTP database
 Used Employee, EmployeePayHistory table
*/
----------------------------------------
/*
SELECT 
	retrieves one or more rows form one or more tables
*/
SELECT JobTitle FROM HumanResources.Employee; -- single row single table
SELECT LoginID,JobTitle,BirthDate FROM HumanResources.Employee;-- multiple row single table
SELECT * FROM HumanResources.Employee; -- multiple row single table, using wildcard
SELECT LoginID,JobTitle,Rate,PayFrequency FROM HumanResources.Employee,HumanResources.EmployeePayHistory; -- multiple row multiple table
----------------------------------------
/*
INSERT
	adds one or more rows into a table
*/
INSERT INTO [HumanResources].[Employee]
           ([BusinessEntityID]
           ,[NationalIDNumber]
           ,[LoginID]
           ,[OrganizationNode]
           ,[JobTitle]
           ,[BirthDate]
           ,[MaritalStatus]
           ,[Gender]
           ,[HireDate]
           ,[SalariedFlag]
           ,[VacationHours]
           ,[SickLeaveHours]
           ,[CurrentFlag]
           ,[rowguid]
           ,[ModifiedDate])
     VALUES
		   (291,
			295847244,
			'adventure-works\sourabh0',
			0x58,
			'SQLServerDBA',
			'1998-05-05',
			'S',
			'M',
			'2020-08-03',
			1,
			99,
			69,
			1,
			'F01251B5-96A3-448D-981E-0F99D789110D',
			'2020-08-30'
		   )
           /*(<BusinessEntityID, int,>
           ,<NationalIDNumber, nvarchar(15),>
           ,<LoginID, nvarchar(256),>
           ,<OrganizationNode, hierarchyid,>
           ,<JobTitle, nvarchar(50),>
           ,<BirthDate, date,>
           ,<MaritalStatus, nchar(1),>
           ,<Gender, nchar(1),>
           ,<HireDate, date,>
           ,<SalariedFlag, [dbo].[Flag],>
           ,<VacationHours, smallint,>
           ,<SickLeaveHours, smallint,>
           ,<CurrentFlag, [dbo].[Flag],>
           ,<rowguid, uniqueidentifier,>
           ,<ModifiedDate, datetime,>)*/

-- CHECK:
SELECT LoginID FROM HumanResources.Employee WHERE BusinessEntityID = 291;

----------------------------------------
/*
UPDATE
	modifies one or more rows in a table
*/
UPDATE HumanResources.Employee SET LoginID = 'adventure-works\sourabh007' WHERE BusinessEntityID = 291;
SELECT LoginID FROM HumanResources.Employee WHERE BusinessEntityID = 291;
----------------------------------------
/*
DELETE
	removes one or more rows from one table
*/
DELETE FROM HumanResources.Employee WHERE BusinessEntityID = 291;
--The transaction ended in the trigger. The batch has been aborted.
--A stored procedure has been written to prevent deletion of data.
--*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*--