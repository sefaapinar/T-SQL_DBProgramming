

--Day --Month-- Year Fonksiyonlarý:

SELECT YEAR(GETDATE())

SELECT MONTH(GETDATE())

SELECT DAY(GETDATE())


SELECT DATEPART(DAY,'2023-02-28 22:18:00:879')



--DateDiff 2 tarih arasýndaki farký almak için kullanýlýr.



SELECT DATEDIFF(YEAR,'2000-12-04','2023-02-28') --Yýl Aralarýndaki fark.



SELECT DATEDIFF(DAY,'2000-12-04','2023-02-28') --Yýl Aralarýndaki gün.



SELECT DATEDIFF(MONTH,'2000-12-04','2023-02-28')--Yýl aralarýndaki ay.




SELECT DATEDIFF(MONTH,'2021-04-12',GETDATE())