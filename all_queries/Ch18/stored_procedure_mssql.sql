USE AdventureWorks2019;
GO

IF OBJECT_ID('HumanResources.select_employees','P') IS NOT NULL
	DROP PROCEDURE HumanResources.select_employees
GO

CREATE PROCEDURE HumanResources.select_employees
AS
BEGIN
	SELECT TOP 100 *
	FROM [HumanResources].[Employee]
	ORDER BY BirthDate DESC;
END;
GO