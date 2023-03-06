

--Elimizde bir ürünler listesi var. Bu ürün listesi için tekil bir akýllý barkod oluþturmamýz gerekiyor. Ýçine ürünkodu alan ve bu koda göre akýllý barkod üreten T-SQL kodunu yazýnýz.
--Barkod Formatý:


--Categorycode-ITEMCODE-YEAR-MONTH-DAY-HOUR-MINUTE-SECOND

--Örnek = GDA-000025-2022-06-15-12-24-37


SELECT * FROM LAB03

SELECT CATEGORY1CODE + '-' + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE + REPLACE(CONVERT(VARCHAR,GETDATE(),102),'.','')
+ REPLACE(CONVERT(VARCHAR,GETDATE(),108),':',''),
* FROM LAB03 WHERE ITEMCODE = 1