

--Bir fonksiyonun baþýnda IsDate var ise sonraki gelen ifadenin var olup olmadýðýný kontrol eder. 




SELECT ISDATE('2022-22-05') --Girilen tarih formatýna uygun olup olmadýðýný belirler.



SELECT * FROM LAB01



--Yaþlarý 40 ile 45 arasýnda olanlarý getirme fonksiyonu. 

SELECT *, DATEDIFF(YEAR,BIRTHDATE,GETDATE()) AS AGE FROM LAB01 WHERE DATEDIFF(YEAR,BIRTHDATE,GETDATE()) BETWEEN 40 AND 45 AND GENDER = 'E' ORDER BY 11

--Elimizde bir müþteri listesi var. Bu listede doðum tarihi alaný var. Buna göre Mayýs ayýnda doðanlarýn listesi nelerdir.



SELECT *, MONTH(BIRTHDATE) FROM LAB01 WHERE MONTH(BIRTHDATE) = 5