DROP USER webgoat;
CREATE USER webgoat IDENTIFIED BY webgoat DEFAULT TABLESPACE users;
GRANT CONNECT, RESOURCE TO webgoat;
GRANT CREATE PROCEDURE TO webgoat;

CREATE OR REPLACE PROCEDURE EMPLOYEE_LOGIN(v_id NUMBER, v_password VARCHAR) AS
    stmt VARCHAR(32767);v_userid NUMBER;
BEGIN
    stmt  := 'SELECT USERID FROM EMPLOYEE WHERE USERID = ' || v_id || ' AND PASSWORD = ''' || v_password || '''';
    EXECUTE IMMEDIATE stmt INTO v_userid;
END;

CREATE OR REPLACE PROCEDURE EMPLOYEE_LOGIN_BACKUP(v_id NUMBER, v_password VARCHAR) AS
    stmt VARCHAR(32767);v_userid NUMBER;
BEGIN
    stmt  := 'SELECT USERID FROM EMPLOYEE WHERE USERID = ' || v_id || ' AND PASSWORD = ''' || v_password || '''';
    EXECUTE IMMEDIATE stmt INTO v_userid;
END;

exit;
