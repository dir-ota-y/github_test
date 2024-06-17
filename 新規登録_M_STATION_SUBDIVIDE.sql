-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_STATION_SUBDIVIDE;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_STATION_SUBDIVIDE(
  AREA_CODE, 
  STATION_CODE, 
  STATION_CODE_DTL, 
  DISPLAY_SEQUENCE, 
  DISPLAY_SEQUENCE_DTL, 
  STATION_NAME, 
  STATION_NAME_DTL, 
  STATION_SHORT_NAME, 
  UNIFICATION_STATION_CODE, 
  CREATE_DATETIME
)    
SELECT    
  W.AREA_CODE, 
  W.STATION_CODE, 
  W.STATION_CODE_DTL, 
  W.DISPLAY_SEQUENCE, 
  W.DISPLAY_SEQUENCE_DTL, 
  W.STATION_NAME, 
  W.STATION_NAME_DTL, 
  W.STATION_SHORT_NAME, 
  W.UNIFICATION_STATION_CODE, 
  CAST('{create_datetime}' AS DATETIME)    
FROM D_PM_DATA.W_STATION_SUBDIVIDE AS W;
