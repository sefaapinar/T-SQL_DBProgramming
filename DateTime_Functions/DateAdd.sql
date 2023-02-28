

--DateAdd Bir tarihe deðer eklemeye yarayan süreçtir.

SELECT DATEADD(YEAR,10,'1999-09-12')--10 YIL EKLEDÝK.

SELECT DATEADD(MONTH,12,'2023-01-21') -- 12 AY EKLEDÝK.



SELECT DATEADD(MINUTE,12,DATEADD(HOUR,10,'2022-07-12')) --Saat ve Dakika ekleyebiliriz.

