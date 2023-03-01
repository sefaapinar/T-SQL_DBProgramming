

--Elimizdeki bir marketin satýþ verisi vardýr. Bu verisetinde 30-50 yaþ arasý kadýn müþterilerinin en çok alýþveriþ yaptýklarý saat aralýklarý yazmaktadýr.

SELECT TOP 1 DATEPART(HOUR,DATE_) AS SAAT,
SUM(TOTALPRICE) AS TOPLAM FROM LAB04


WHERE CUSTOMERGENDER = 'K' AND DATEDIFF(YEAR,CUSTOMERBIRHTDATE,GETDATE()) BETWEEN 30 AND 50
GROUP BY DATEPART(HOUR,DATE_)
ORDER BY 2 DESC