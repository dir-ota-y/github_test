-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_TARGET;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_TARGET(
  TARGET_CODE, 
  TARGET_SUB_CODE, 
  TARGET_NAME, 
  HP_FLG, SEX, 
  AGE_FROM, 
  AGE_TO, 
  JOB_CODE01_FROM, 
  JOB_CODE01_TO, 
  JOB_CODE02_FROM, 
  JOB_CODE02_TO, 
  JOB_CODE03_FROM, 
  JOB_CODE03_TO, 
  OWNER_WIFE01, 
  OWNER_WIFE02, 
  MARRIAGE_FLG, 
  HH_INSIDE_TARGET, 
  CREATE_DATETIME
)  
SELECT  
  W.TARGET_CODE, 
  W.TARGET_SUB_CODE, 
  W.TARGET_NAME, 
  W.HP_FLG, 
  W.SEX, 
  W.AGE_FROM, W.AGE_TO, 
  W.JOB_CODE01_FROM, 
  W.JOB_CODE01_TO, 
  W.JOB_CODE02_FROM, 
  W.JOB_CODE02_TO, 
  W.JOB_CODE03_FROM, 
  W.JOB_CODE03_TO, 
  W.OWNER_WIFE01, 
  W.OWNER_WIFE02, 
  W.MARRIAGE_FLG, 
  W.HH_INSIDE_TARGET, 
  CAST('{create_datetime}' AS DATETIME)  
FROM D_PM_DATA.W_TARGET AS W;
