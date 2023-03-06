


--Rand() Fonksiyonu Kullanýmý

SELECT RAND() --Random bir deðer üretir.


SELECT CONVERT(INT,RAND()*100) --0-100 Arasýnda bir deðer üretmek.



--Elimizde para hareketlerinin kaydýný tutan bir sistemin veriseti var.Burada her bir müþteri için gelen ve giden havale bilgileri tutuluyor.
--Gelen havale için para tutarý pozitif, giden havale için negatif deðer olarak veritabanýna kaydediliyor.
--Bu tabloda müþteri bazýnda toplam para trafiði hacmi ve her bir müþterinin bakiyesini gösterecek sorguyu yazalým.


SELECT CUSTOMERID,SUM(AMOUNT) BALANCE FROM LAB01,
SUM(ABS(AMOUNT)) MONEYVOLUME
WHERE CUSTOMERID = 55
GROUP BY CUSTOMERID


SELECT CUSTOMERID, SUM(AMOUNT) BALANCE,
SUM(ABS(AMOUNT)) MONEYVALUE
FROM LAB01
GROUP BY CUSTOMERID