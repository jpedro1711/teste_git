CREATE TABLE REGISTRATIONS_VOLVO (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Jan DECIMAL,
	Fev DECIMAL,
	Mar DECIMAL,
	Abr DECIMAL,
	Mai DECIMAL,
	Jun DECIMAL,
	Jul DECIMAL,
	Ago DECIMAL,
	Sep DECIMAL,
	Oct DECIMAL,
	Nov DECIMAL,
	Dec DECIMAL,
	Year int,
	Line varchar(2)
)

INSERT INTO REGISTRATIONS_VOLVO VALUES (100, 100, 100, 242, 123, 123, 900, 123, 754, 123, 900, 1000, 2024, 'f')
INSERT INTO REGISTRATIONS_VOLVO VALUES (120, 100, 100, 242, 123, 123, 900, 123, 754, 123, 900, 1000, 2024, 'vm')

CREATE TABLE REGISTRATIONS_TOTAL (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Jan DECIMAL,
	Fev DECIMAL,
	Mar DECIMAL,
	Abr DECIMAL,
	Mai DECIMAL,
	Jun DECIMAL,
	Jul DECIMAL,
	Ago DECIMAL,
	Sep DECIMAL,
	Oct DECIMAL,
	Nov DECIMAL,
	Dec DECIMAL,
	Year int,
	Line varchar(2)
);

INSERT INTO REGISTRATIONS_TOTAL VALUES (1000, 1000, 1000, 2425, 1263, 1623, 2000, 1323, 7514, 1233, 9020, 10010, 2024, 'f')
INSERT INTO REGISTRATIONS_TOTAL VALUES (1000, 1000, 1000, 2125, 1293, 1623, 2000, 1323, 7514, 1233, 9020, 10010, 2024, 'vm')

SELECT * FROM REGISTRATIONS_VOLVO where Line = 'f';

SELECT * FROM REGISTRATIONS_TOTAL where Line = 'f';

SELECT 
	rv.Year,
	rv.Line,
	((rv.Jan / rt.Jan) * 100) as ms_jan,
	((rv.Fev / rt.Fev) * 100) as ms_fev,
	((rv.Mar / rt.Mar) * 100) as ms_mar,
	((rv.Abr / rt.Abr) * 100) as ms_apr,
	((rv.Mai / rt.Mai) * 100) as ms_may,
	((rv.Jun / rt.Jun) * 100) as ms_jun,
	((rv.Jul / rt.Jul) * 100) as ms_jul,
	((rv.Ago / rt.Ago) * 100) as ms_ago,
	((rv.Sep / rt.Sep) * 100) as ms_sep,
	((rv.Oct / rt.Oct) * 100) as ms_oct,
	((rv.Nov / rt.Nov) * 100) as ms_nov,
	((rv.Dec / rt.Dec) * 100) as ms_dec
FROM REGISTRATIONS_VOLVO rv
	INNER JOIN REGISTRATIONS_TOTAL as rt
ON rt.Id = rv.Id and rt.Line = rv.Line;

DROP TABLE REGISTRATIONS_TOTAL;
DROP TABLE REGISTRATIONS_VOLVO;