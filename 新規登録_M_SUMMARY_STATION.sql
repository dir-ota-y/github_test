-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_SUMMARY_STATION;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_SUMMARY_STATION(
  AREA_CODE, 
  STATION_CODE, 
  STATION_SHORT_NAME, 
  STATION_NAME, 
  DISPLAY_STATION_NAME, 
  SUMMARY_TYPE, 
  SUMMARY_NAME, 
  STATION_TYPE, 
  ELEMENT_STATION_CODE, 
  CREATE_DATETIME
)  
SELECT  
  W.AREA_CODE, 
  W.STATION_CODE, 
  W.STATION_SHORT_NAME, 
  W.STATION_NAME, 
  W.DISPLAY_STATION_NAME, 
  W.SUMMARY_TYPE, 
  W.SUMMARY_NAME, 
  W.STATION_TYPE, 
  W.ELEMENT_STATION_CODE, 
  CAST('{create_datetime}' AS DATETIME)  
FROM D_PM_DATA.W_SUMMARY_STATION AS W;
