USE AdventureWorks2019;
GO

IF OBJECT_ID('HumanResources.sp_select_employees', 'P') IS NOT NULL
    DROP PROCEDURE HumanResources.sp_select_employees;
GO

CREATE PROCEDURE HumanResources.sp_select_employees
	@JobTitle nvarchar(50)
AS
BEGIN
SELECT 
  TOP 100 * 
FROM 
  [HumanResources].[Employee] AS e 
  INNER JOIN [HumanResources].[EmployeeDepartmentHistory] AS edh 
  ON e.BusinessEntityID = edh.BusinessEntityID 
WHERE 
  e.JobTitle = @JobTitle
ORDER BY 
  e.BirthDate DESC;
END;
GO