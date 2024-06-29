


CREATE FUNCTION DBO.GETAGEGROUP (@BIRTHDATE AS DATE)
RETURNS VARCHAR(20) AS BEGIN
DECLARE @AGE AS INT
SET @AGE = DATEDIFF(YEAR,@BIRTHDATE,GETDATE())

DECLARE @RESULT AS VARCHAR(20)

IF @AGE < 20
	SET @RESULT = '20 DEN KUCUK'
IF @AGE BETWEEN 20 AND 30
	SET @RESULT = '20-30 ARASI'
IF @AGE BETWEEN 30 AND 40
	SET @RESULT = '30-40 ARASI'
IF @AGE > 40
	SET @RESULT = '40 TAN B�Y�K'

RETURN @RESULT
END




