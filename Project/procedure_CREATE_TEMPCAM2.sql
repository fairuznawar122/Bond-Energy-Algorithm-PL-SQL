---For Creating TEMPCAM1

CREATE OR REPLACE PROCEDURE CREATE_TEMPCAM2
IS
F1 NUMBER;
F2 NUMBER;
F3 NUMBER;
F4 NUMBER;
ALTR VARCHAR2(500);
COMM VARCHAR2(10):='COMMIT';
BEGIN
	
	F1 := CONT('0','A4','A1');
	F2 := CONT('A1','A4','A3');
	F3 := CONT('A3','A4','A2');
	F4 := CONT('A2','A4','0');
	
	DBMS_OUTPUT.PUT_LINE(F1 ||' -> '|| F2||' -> '|| F3|| ' -> '||F4);
	
	IF(F1>F2 AND F1>F3 AND F1>F4) THEN 
		--A4,A1,A3,A2
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A4 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A1 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A3 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A2 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		EXECUTE IMMEDIATE COMM;
	ELSIF(F2>F3 AND F2>F1 AND F2>F4) THEN
		--A1,A4,A3,A2
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A1 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A4 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A3 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A2 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		EXECUTE IMMEDIATE COMM;
	ELSIF(F3>F1 AND F3>F2 AND F3>F4)THEN
		--A1,A3,A4,A2
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A1 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A3 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A4 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A2 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		EXECUTE IMMEDIATE COMM;
	ELSIF(F4>F1 AND F4>F2 AND F4>F3)THEN
		--A1,A3,A2,A4,
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A1 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A3 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A2 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		ALTR := 'ALTER TABLE TEMPCAM2 ADD A4 NUMBER';
		EXECUTE IMMEDIATE ALTR;
		EXECUTE IMMEDIATE COMM;
	END IF;

END CREATE_TEMPCAM2;
/

EXEC CREATE_TEMPCAM2;
COMMIT;