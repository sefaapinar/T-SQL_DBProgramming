

DECLARE @TARIH AS DATETIME

SET @TARIH = '2022-04-04 14:56:51'

DECLARE @YIL AS INT
DECLARE @AY AS INT
DECLARE @GUN AS INT
DECLARE @SAAT AS INT
DECLARE @DAKIKA AS INT
DECLARE @SANIYE AS INT

SET @YIL = YEAR(@YIL)
SET @YIL = MONTH(@AY)
SET @YIL = DAY(@GUN)
SET @YIL = DATEPART(HOUR,(@SAAT))
SET @YIL = DATEPART(MINUTE,@DAKIKA)
SET @YIL = DATEPART(SECOND,@SANIYE)


SELECT @TARIH,@YIL,@AY,@GUN,@SAAT,@DAKIKA,@SANIYE