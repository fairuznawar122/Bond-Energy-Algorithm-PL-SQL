---------PROCEDURE FOR ATTRIBUTE USAGE MATRIX CREATION-------

CREATE OR REPLACE PROCEDURE COUNTCOL(COL IN char, COLNO IN NUMBER)
IS
Q QUERIES.QNO%TYPE;
QTXT QUERIES.QUERY%TYPE;
COLNAME VARCHAR2(5);
plsql_block VARCHAR2(500);
plsql_block1 VARCHAR2(500);

BEGIN

	---CREATING NEW NAMES OF COLUMNS
	COLNAME := CONCAT('A',TO_CHAR(COLNO));
	
	FOR R IN (select * from queries union select * from queries@site1) LOOP
		QTXT := R.QUERY;
		Q := R.QNO;
		IF(INSTR(QTXT, COL) > 0) then
			plsql_block := 'UPDATE AUM SET ' || COLNAME  || '= 1 WHERE AUM.QNO = '||Q;
			EXECUTE IMMEDIATE plsql_block;
			plsql_block1 := 'COMMIT';
			EXECUTE IMMEDIATE plsql_block1;
		END IF;
	END LOOP;
	
END COUNTCOL;
/
----------------------------------------------------------------
