

--Tan�ml� olan bir de�i�kene SQL c�mlesinden gelen veriyi atama.


DECLARE @TOTALSALE AS FLOAT
DECLARE @TOTALAMOUNT AS INT
DECLARE @ROWCOUNT AS INT 

--SET @TOTALSALE = (SELECT SUM(TOTALPRICE) FROM SALES WHERE CITY = '�STANBUL')
SET @TOTALAMOUNT = (SELECT SUM(AMOUNT) FROM SALES WHERE CITY = '�STANBUL')

SELECT @TOTALSALE = SUM(TOTALPRICE), @TOTALAMOUNT = SUM(AMOUNT),
@ROWCOUNT = COUNT(*)
FROM SALES WHERE CITY = '�STANBUL'

SELECT @TOTALSALE AS TOTALSALES,@TOTALAMOUNT AS TOTALAMOUNT,@ROWCOUNT AS TOTALROWCOUNT
