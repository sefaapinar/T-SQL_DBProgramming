


--100 Tane sýcaklýk ölçer termometreden sýcaklýk ölçüm bilgilerini almak istiyoruz. Bunun için 100 tane termometre tanýmlayýp veritabanýna kaydediniz.
--Her biri için 18-23 derece arasýnda rastgeþe b,r deüer atayýp okunana deðer kýsmýna bu deðeri kaydedelim.


SELECT * FROM LAB01 

TRUNCATE TABLE LAB01 --Tabloyu geçiçi olarak sileriz. 


DECLARE @I AS INT = 1
WHILE @I < 1000000
BEGIN
	DECLARE @DEVICENAME AS VARCHAR(100)
	SET @DEVICENAME = 'THERMOMETER-' +REPLICATE('0',4-LEN(@I))+ CONVERT(VARCHAR,@I)
	DECLARE @CURRENTVALUE AS FLOAT
	SET @CURRENTVALUE =ROUND( 15 + RAND()*5,2)
	INSERT INTO LAB01 (DEVICENAME,CURRENTVALUE) VALUES (@DEVICENAME,@CURRENTVALUE)
	--SELECT @DEVICENAME,@CURRENTVALUE
	SET @I = @I + 1
END