--Elimizde bir market sisteminin veritabaný var. Burada ITEMCODE alaný metin bir alan olarak ID deðerine eþit þekilde tutuluyor. Biz burada ITEMCODE ALANINI AKILLI KOD HALÝNE
--getirmek istiyoruz. Örneðin 1 numaralý satýr için kategori kodu 'EVV' ve ITEMCODE 1 ise EVV000001 olacak þekilde 24068 numaralý kayýt için ise GDA024068 olacak þekilde
-- getirmek istiyoruz. UPDATE KODUNU YAZINIZ.


SELECT * FROM LAB07

SELECT 'EVV'  + REPLICATE('0',5)+ '1'

SELECT CATEGORY1CODE + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE FROM LAB07

UPDATE LAB07 SET ITEMCODE = CATEGORY1CODE + REPLICATE('0',6-LEN(ITEMCODE)) + ITEMCODE