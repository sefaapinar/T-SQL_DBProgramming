


--Elimizde bir marketin satýþ verileri vardýr. Bu veriseti içerisinde 2022 yýlýnda hangi ay toplam ne kadarlýk satýþ
-- yapýldýðý bilgisini getiren sorguyu yazalým.


SELECT DATEPART(YEAR,DATE_) AS YIL,
DATEPART(MONTH,DATE_) AS AY,
SUM(TOTALPRICE) AS TOPLAMSATIS FROM LAB03
WHERE DATE_ >= '2022.01.01'
GROUP BY DATEPART(YEAR,DATE_),DATEPART(MONTH,DATE_)
ORDER BY DATEPART(MONTH,DATE_)