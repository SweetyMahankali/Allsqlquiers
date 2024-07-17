DECLARE @UpdatedTable TABLE (
    SalesPersonID INT
);

UPDATE TOP (10) SalesPerson
SET SalesQuota = SalesQuota * 1.25
OUTPUT inserted.SalesPersonID INTO @UpdatedTable
FROM Sales.SalesPerson;

SELECT * FROM @UpdatedTable;
