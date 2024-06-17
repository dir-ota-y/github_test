-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_NEWJOB;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_NEWJOB(
  JOB_CODE, 
  DISPLAY_SEQ, 
  JOB_NAME, 
  CREATE_DATETIME
)    
SELECT    
  W.JOB_CODE, 
  W.DISPLAY_SEQ, 
  W.JOB_NAME, 
  CAST('{create_datetime}' AS DATETIME)    
FROM D_PM_DATA.W_NEWJOB AS W;
