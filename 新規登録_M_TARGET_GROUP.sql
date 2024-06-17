-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_TARGET_GROUP;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_TARGET_GROUP(
  TARGET_GROUP_CODE, 
  TARGET_CODE, 
  DISPLAY_SEQ, 
  TARGET_GROUP_NAME, 
  CREATE_DATETIME
)  
SELECT  
  W.TARGET_GROUP_CODE, 
  W.TARGET_CODE, 
  W.DISPLAY_SEQ, 
  W.TARGET_GROUP_NAME, 
  CAST('{create_datetime}' AS DATETIME)  
FROM D_PM_DATA.W_TARGET_GROUP AS W;
