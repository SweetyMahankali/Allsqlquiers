
	WITH cte AS 
    (
        SELECT 
            *,
            ROW_NUMBER() OVER ( 
                PARTITION BY LoanProposalid 
                ORDER BY LoanProposalid
                ) AS Row_Number
        FROM tbl_tw_CB_Response
    )
DELETE FROM cte WHERE Row_Number <> 1;


ALTER TABLE tbl_tw_CB_Response
ALTER COLUMN LoanProposalId varchar(50) NOT NULL;


ALTER TABLE tbl_tw_CB_Response
ADD CONSTRAINT pk_tbl_tw_CB_Response_LoanProposalId PRIMARY KEY (LoanProposalId);

