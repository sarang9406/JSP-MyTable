DROP SEQUENCE MYNOSEQ;
DROP TABLE MYBOARD;

CREATE SEQUENCE MYNOSEQ;
CREATE TABLE MYBOARD (
	MYNO NUMBER PRIMARY KEY,
	MYNAME VARCHAR2(1000) NOT NULL,
	MYTITLE VARCHAR2(2000) NOT NULL,
	MYCONTENT VARCHAR2(4000) NOT NULL,
	MYDATE DATE NOT NULL
);

INSERT INTO MYBOARD
VALUES(MYNOSEQ.NEXTVAL, '관리자', 'TEXT 글입니다','TEST1234', SYSDATE);

INSERT INTO MYBOARD
VALUES(MYNOSEQ.NEXTVAL, 'JUNE','TEXT','HAPPY',SYSDATE);

SELECT MYNO, MYNAME, MYTITLE, MYCONTENT, MYDATE
FROM MYBOARD
ORDER BY MYNO DESC;