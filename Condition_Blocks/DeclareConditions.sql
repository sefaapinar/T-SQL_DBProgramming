


DECLARE @NUMBER AS INT
SET @NUMBER = -20
DECLARE @RESULT AS VARCHAR(100)

IF @NUMBER >=0 
BEGIN
SET @RESULT = 'Se�ilen De�er Pozitif Bir De�erdir.'
END 
ELSE
BEGIN
SET @RESULT = 'Se�ilen De�er Negatif Bir De�erdir.'
END

SELECT @RESULT