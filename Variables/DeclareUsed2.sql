

DECLARE @AD AS VARCHAR(100)
SET @AD = 'Sefa'

DECLARE @SOYAD AS VARCHAR(100)
SET @SOYAD = 'P�nar'

DECLARE @ADSOYAD AS VARCHAR(100)
SET @ADSOYAD = @AD + ' ' + @SOYAD

DECLARE @UZUNLUK AS INT
SET @UZUNLUK = LEN(@ADSOYAD)

SELECT @ADSOYAD,@UZUNLUK

--Uzunlu�unu al�r�z.



