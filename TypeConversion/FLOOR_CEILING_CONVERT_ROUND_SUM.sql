



--Elimizde satýþlarýn olduðu bir market database'i var.
--Burada kategori bazlý toplam satýþ cirosunu bulurken, 
--ondalýk rakamlardan kurtulmak istiyoruz.
--Floor,Ceiling,Round ve convert(INT) fonksiyonlarýný kullanarak elde ettiðiniz verileri karþýlaþtýralým.


SELECT * FROM LAB03 



SELECT ROUND(SUM(UNITPRICE),0) FROM LAB03

SELECT CATEGORY1 + '>' + CATEGORY2 + '>' + CATEGORY3 + '>' + CATEGORY4 CATEGORY,
SUM(UNITPRICE) TOTALSALE,
CONVERT(INT,SUM(UNITPRICE)) TOTAL_SALE,
CEILING(SUM(UNITPRICE)) TOTALSALE_CEILING,
FLOOR(SUM(UNITPRICE)) TOTALSALE_FLOOR,
ROUND(SUM(UNITPRICE),0) TOTALSALE_ROUND
FROM LAB03

GROUP BY CATEGORY1,CATEGORY2,CATEGORY3,CATEGORY4