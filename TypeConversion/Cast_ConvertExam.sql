


SELECT TRY_CAST('2022-16-24' AS DATE)

SELECT TRY_CONVERT(DATE,'2022-16-24')


--Elimizde bir E-Ticaret firmasýnýn kesmiþ olduðu faturalarýn listesini tutan bir veriseti var.
--Bu veriseti içinde DATE_ alaný DATETIME türünde. Bu tabloda DATE_ alanýný DATE ve TIME türünde parçalayarak Tarih ve Saat Deðerlerini ayrý ayrý getirecek sorguyu yazalým.


SELECT *,
CAST(DATE_ AS DATE),
CAST(DATE_ AS TIME),
CONVERT(DATE,DATE_) AS DATE FROM LAB01

SELECT *, CONVERT(VARCHAR,DATE_,103) DATESTR FROM LAB01



