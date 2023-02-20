

--Elimizde Türkçe isimlerden oluþan bir müþteri listesi var. Bu müþteri listesinde CITY ve TOWN alanlarý baþharfi büyük,
--geri kalan harfler küçük olacak þekilde yazýlmýþ durumda. Bu tabloda CITY ve TOWN alanlarýnýn tamamý büyük olacak þekilde UPDATE ediniz.

SELECT * FROM LAB03

UPDATE LAB03 SET CITY = UPPER(CITY), TOWN = UPPER(TOWN) --Elimizdeki deðerler türkçe karakter deðilse düzenleme yapmamýz gerekir.

--Bu düzenleme:

SELECT UPPER('washington ' COLLATE sql_latin1_general_cp1_ci_as) --olarak güncelleyebiliriz.

UPDATE LAB03 SET CITY = LOWER(CITY), TOWN = LOWER(TOWN)