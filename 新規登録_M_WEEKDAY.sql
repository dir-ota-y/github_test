-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_WEEKDAY;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_WEEKDAY(
  BROADCAST_WEEKDAY, 
  WEEKDAY_NAME, 
  WEEKDAY_SHORT_NAME, 
  CREATE_DATETIME
)  
SELECT  
  W.BROADCAST_WEEKDAY, 
  W.WEEKDAY_NAME, 
  W.WEEKDAY_SHORT_NAME, 
  CAST('{create_datetime}' AS DATETIME)  
FROM D_PM_DATA.W_WEEKDAY AS W;
