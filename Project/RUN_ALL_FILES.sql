-------------TABLES------------------
CLEAR SCREEN;
@C:\Users\Lenovo\Desktop\Project\TABLES\ATTRIBUTE_AFFINITY_MATRIX.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\ATTRIBUTE_USAGE_MATRIX.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\FREQUENCY_MATRIX_OF_USER_TABLE.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\QUERIES.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\SumOfFM.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\UserTable.sql;
@C:\Users\Lenovo\Desktop\Project\TABLES\CLUSTERED_AFFINITY_MATRIX.sql;

SELECT * FROM PROJECT;
SELECT * FROM FM;
SELECT * FROM QUERIES;

------------PROCEDURE and FUNCTIONS--------------------
@C:\Users\Lenovo\Desktop\Project\procedure_countcall.sql;
@C:\Users\Lenovo\Desktop\Project\procedure_createAAM.sql;
@C:\Users\Lenovo\Desktop\Project\function_camInitialize.sql;
@C:\Users\Lenovo\Desktop\Project\function_BOND.sql;
@C:\Users\Lenovo\Desktop\Project\function_cont.sql;
@C:\Users\Lenovo\Desktop\Project\procedure_CREATE_TEMPCAM1.sql;
 
------------------------------MAIN------------------------
@C:\Users\Lenovo\Desktop\Project\test1.sql;

@C:\Users\Lenovo\Desktop\Project\FUNCTION_insertingTempcam1.sql;
@C:\Users\Lenovo\Desktop\Project\FUNCTION_UPDATINGTempcam1.sql;
@C:\Users\Lenovo\Desktop\Project\procedure_CREATE_TEMPCAM2.sql;
@C:\Users\Lenovo\Desktop\Project\FUNCTION_insertingTempcam2.sql;
@C:\Users\Lenovo\Desktop\Project\FUNCTION_UPDATINGTempcam2.sql;

SELECT * FROM SumOfFM;
SELECT * FROM AUM;
SELECT * FROM AAM;
SELECT * FROM CAM;
SELECT * FROM TEMPCAM1;
SELECT * FROM TEMPCAM2;
SELECT COLNAME FROM TEMPCAM2 WHERE ROWNUM<3;
SELECT COLNAME FROM TEMPCAM2 WHERE COLNAME NOT IN (SELECT COLNAME FROM TEMPCAM2 WHERE ROWNUM<3);


