-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_STATION;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_STATION(
  AREA_CODE, 
  STATION_CODE, 
  DISPLAY_SEQ, 
  STATION_NAME, 
  STATION_SHORT_NAME, 
  CREATE_DATETIME
)  
SELECT   
  W.AREA_CODE, 
  W.STATION_CODE, 
  W.DISPLAY_SEQ, 
  W.STATION_NAME, 
  W.STATION_SHORT_NAME, 
  CAST('{create_datetime}' AS DATETIME)  
FROM D_PM_DATA.W_STATION AS W;
