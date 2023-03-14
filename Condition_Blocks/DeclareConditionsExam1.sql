

--Elimizde plaka bilgileri ile birlikte araç verilerinin tutulduðu bir tablo var. Bu tablodan dinamik þekilde sorgu çekmek istiyoruz.
--Tablomuza @PLATE,@COLOR,@TITLE,@BRAND,@LICENCEDATE1,@LICENCEDATE2 deðiþkenlerini gönderiyoruz. Bu deðiþkenler boþ geliyor ise varsayýlan deðerlere göre deðer almasýný istiyoruz.
--Bu þekilde tablodan sorgu çeken T-SQL kodunu yazalým.


DECLARE @PLATE AS VARCHAR(20) = '34%'
DECLARE @COLOR AS VARCHAR(20) = 'BEYAZ'
DECLARE @TITLE AS VARCHAR(100) = 'Fiat%'
DECLARE @BRAND AS VARCHAR(20) = 'Fiat%'
DECLARE @LICENCEDATE1 AS DATE = '20180101'
DECLARE @LICENCEDATE2 AS DATE = '20201231'

IF @PLATE = ''
	SET @PLATE = '%'
IF @COLOR = ''
	SET @COLOR = '%'
IF @TITLE = ''
	SET @TITLE = '%'
IF @BRAND = ''
	SET @BRAND = '%'
IF @LICENCEDATE1 = ''
	SET @LICENCEDATE1 = '%'
IF @LICENCEDATE2 = ''
	SET @LICENCEDATE2 = '%'


SELECT * FROM LAB01 
WHERE PLATE LIKE @PLATE
AND COLOR LIKE @COLOR
AND TITLE LIKE @TITLE
AND BRAND LIKE @BRAND
AND LICENCEDATE BETWEEN ISNULL( @LICENCEDATE1,'20180101') AND ISNULL(@LICENCEDATE2,GETDATE())