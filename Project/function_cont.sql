SET SERVEROUTPUT ON;
SET VERIFY OFF;


CREATE OR REPLACE FUNCTION CONT(F IN CHAR, M IN CHAR, L IN CHAR)
RETURN NUMBER
IS
CONTVALUE NUMBER :=0;
BEGIN
	
	CONTVALUE := 2* BOND(F,M) + 2* BOND(M,L) - 2* BOND(F,L);
	--DBMS_OUTPUT.PUT_LINE(CONTVALUE);
	RETURN CONTVALUE;
END CONT;
/