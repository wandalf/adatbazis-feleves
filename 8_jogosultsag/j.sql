CONNECT sys/rendszergazda AS SYSDBA

CREATE ROLE tanar;

GRANT SELECT, UPDATE, DELETE ON scott.ertekeles TO tanar;
GRANT SELECT, UPDATE ON scott.diak TO tanar;
GRANT SELECT ON scott.osztaly TO tanar;
GRANT CREATE SESSION TO tanar;

CREATE ROLE tanulo;

GRANT SELECT ON scott.diak TO tanulo;
GRANT SELECT ON scott.osztaly TO tanulo;
GRANT SELECT ON scott.ertekeles TO tanulo;
GRANT CREATE SESSION TO tanulo;

CREATE USER Alfred
	IDENTIFIED BY alf
	DEFAULT TABLESPACE users
	TEMPORARY TABLESPACE temp
	QUOTA UNLIMITED ON users;

CREATE USER Bernard
	IDENTIFIED BY bern
	DEFAULT TABLESPACE users
	TEMPORARY TABLESPACE temp
	QUOTA UNLIMITED ON users;	

GRANT tanar TO Alfred;
GRANT tanar TO Bernard;

CREATE USER Sop�n
	IDENTIFIED BY sop
	DEFAULT TABLESPACE users
	TEMPORARY TABLESPACE temp
	QUOTA UNLIMITED ON users;

CREATE USER Gizella
	IDENTIFIED BY giz
	DEFAULT TABLESPACE users
	TEMPORARY TABLESPACE temp
	QUOTA UNLIMITED ON users;

GRANT tanulo TO Sop�n;
GRANT tanulo TO Gizella;