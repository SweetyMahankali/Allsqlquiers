 DECLARE @SearchTerm NVARCHAR(100) = 'select * from tbl_Tw_ClientDetails';

SELECT DISTINCT
    ROUTINE_NAME AS ProcedureName,
    ROUTINE_DEFINITION AS ProcedureText
FROM
    INFORMATION_SCHEMA.ROUTINES
WHERE
    ROUTINE_DEFINITION LIKE '%' + @SearchTerm + '%'
    AND ROUTINE_TYPE = 'PROCEDURE';