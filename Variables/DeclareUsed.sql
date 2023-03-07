

--Bir deðiþken nasýl atanýr

--T-SQL de bir deðiþken @iþareti ile tanýmlanýr.

--SQL'de bir deðiþken tanýmý DECLARE olarak tanýmlanýr.

DECLARE @SAYI AS INT

SELECT @SAYI

DECLARE @SAYI1 AS INT
SET @SAYI1 = 15

DECLARE @SAYI2 AS INT
SET @SAYI2 = 20

DECLARE @TOPLAM AS INT
SET @TOPLAM = @SAYI1 + @SAYI2

SELECT @TOPLAM 