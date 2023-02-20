--City ve Town alanlarýnýn ilk harflerini büyük yapýyoruz. Geri kalanlarý küçük yapýyoruz.





SELECT * FROM LAB04

SELECT LOWER('BURDUR')

SELECT LEFT('BURDUR',1) + LOWER(RIGHT('BURDUR',5))

--Bir string ifadenin kaç harfli olduðunu ve uzunluðunu gösteren ifade.

SELECT *, (LEFT(CITY,1) + LOWER(RIGHT(CITY,LEN(CITY)-1))) FROM LAB04

--Ýlk Harfi Büyük Diðer harflerinin hepsi küçük.

SELECT *, (LEFT(TOWN,1) + LOWER(RIGHT(TOWN,LEN(TOWN)-1))) FROM LAB04


UPDATE LAB04 SET CITY = (LEFT(CITY,1) + LOWER(RIGHT(CITY,LEN(CITY)-1))), TOWN = (LEFT(TOWN,1) + LOWER(RIGHT(TOWN,LEN(TOWN)-1))) 



