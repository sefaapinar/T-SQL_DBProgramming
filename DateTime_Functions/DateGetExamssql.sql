



--Elimizde bir marketin satýþ verisi var. Bu verisetine göre içinde bulunduðumuz ay ve bir ay öncesinin satýþlarýný maðaza bazlý olarak karþýlaþtýrýnýz.

SELECT CITY,SUM(TOTALPRICE) TOTALSALES,

(
SELECT SUM(TOTALPRICE) FROM LAB08 WHERE CITY = LAB08.CITY
AND YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(DATE_) = MONTH(GETDATE()) -1
)
FROM LAB08 
WHERE YEAR(DATE_) = YEAR(GETDATE()) AND MONTH(GETDATE()) = MONTH(GETDATE())
GROUP BY CITY
ORDER BY 1