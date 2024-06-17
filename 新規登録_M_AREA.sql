-- ==================================================================================

--  TRUNCATE

-- ==================================================================================

TRUNCATE TABLE D_PM_DATA.M_AREA;

-- ==================================================================================


INSERT INTO D_PM_DATA.M_AREA(
  AREA_CODE, 
  DISPLAY_SEQ, 
  AREA_NAME, 
  CREATE_DATETIME
)  
SELECT   
  AREA_CODE, 
  DISPLAY_SEQ, 
  AREA_NAME, 
  CAST('{create_datetime}' AS DATETIME)
FROM D_PM_DATA.W_AREA;
