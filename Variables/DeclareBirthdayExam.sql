

--Elimizde müþterilerin bulunduðu bir veri seti var. Elle girilen gün,ay ve yýl deðiþkenlerini alarak DATE türünde tanýmladýðýnýz bir deðiþkene deðer atayalým.
--Ve bu deðer atanan müþteriler listesinden doðum tarihi bu deðere sahip müþterileri çaðýralým.


DECLARE @YEAR AS INT
DECLARE @MONTH AS INT
DECLARE @DAY AS INT

SET @YEAR = 1958
SET @MONTH = 10
SET @DAY = 10

DECLARE @DATE AS DATE

SET @DATE = DATEFROMPARTS(@YEAR,@MONTH,@DAY)

SELECT @DATE


SELECT * FROM LAB02 WHERE BIRTHDATE = @DATE 