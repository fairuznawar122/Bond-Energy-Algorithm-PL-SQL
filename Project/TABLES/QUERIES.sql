drop table QUERIES;

CREATE TABLE QUERIES(
	QNO NUMBER,
	QUERY VARCHAR2(200)
	);

--INSERT INTO QUERIES
--VALUES('');
INSERT INTO QUERIES
VALUES(1,'SELECT BUDGET FROM PROJECT WHERE PNO = VALUE');
INSERT INTO QUERIES
VALUES(2,'SELECT PNAME,BUDGET FROM PROJECT');
INSERT INTO QUERIES
VALUES(3,'SELECT PNAME FROM PROJECT WHERE LOCATION = VALUE');
INSERT INTO QUERIES
VALUES(4,'SELECT SUM(BUDGET) FROM PROJECT WHERE LOCATION = VALUE');


COMMIT;