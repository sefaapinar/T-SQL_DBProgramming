

--ASCII KULLANIM

SELECT ASCII('B')

SELECT ASCII('-')

SELECT ASCII ('SEFA')

--Özel karakterin veritabanlarýndaki karþýlýðý byte olarak numara deðerleri vardýr. 


-- CHAR Fonksiyonu
-- Bir karakterin hangi ascý deðere geldiðini görüntüleyebiliriz.

SELECT CHAR(65) --BURADA 65'RAKAMINA GELEN KARAKTERÝN KARÞILIÐI GELÝR YANÝ A HARFÝ.


-- CONCAT Fonksiyonu birden fazla string ifadeyi birleþtirmek için kullanýlýr.

SELECT CONCAT ('SEFA','-' ,'PINAR')

SELECT 'SEFA' + 'PINAR'

-- LEFT-RIGHT saðdan ve soldan karakterleri almak için kullanýlýr.

SELECT LEFT('SEFA PINAR',3)

SELECT RIGHT('SEFA PINAR',5)


-- TRIM Fonksiyonu

--(LTRIM,RTRIM) --Bir string ifadenin baþýnda ve sonunda bulunan ifadeleri temizler.

SELECT TRIM ('  SEFA')

SELECT LTRIM('SEFA   ')

SELECT RTRIM ('  PINAR')

-- Lower / Upper / Reverse / Replicate

--Lower fonksiyonu bütün fonksiyonlarda küçük harfe dönüþtürür.
--Upper fonksiyonu bütün fonksiyonlarda büyük harfe dönüþtürür. 
--Reverse tersten yazdýrma fonksiyonu
--Replicate bir string ifadeyi bizim belirlediðimiz sayýda tekrar ettiren fonksiyon

SELECT LOWER('BTK AKADEMÝ')
SELECT UPPER ('btk akademi')
SELECT REVERSE ('BTK AKADEMÝ')
SELECT REPLICATE ('btk akademi ',2) --2 Kere belirtilen kelime tekrar etmiþtir.

--REPLACE Fonksiyonu: 
--Bir string ifadenin içerisinde aradýðýmýz ifadeyi farklý bir string deðeri ile deðiþtirebiliriz.

SELECT REPLACE('T-SQL ile herhangi bir programlama dili ile yapýlabilecek hemen hemen her þeyi yapabiliriz.','T-SQL','Transact SQL')
--Burada birinci deðer ana deðerdir. Ýkinci deðer hangi deðeri deðiþtireceðimizi gösteririz. Üçüncü deðerde ise deðiþtirelecek veriyi belirtiriz.

--SUBSTRING bir string ifadenin içerisinde belirli bir alaný almak için kullanýrýz.

SELECT SUBSTRING ('SEFA PINAR',2,2) -- ikinci karakterden itibaren 2 karakter al diye belirtiyoruz.
--Genelde string parse ifadelerinde çok kullanýlýr.


--CHARINDEX bir string ifadenin içerisinde aranan deðerin nerede olduðunu bize söyler.

SELECT CHARINDEX ('2022','SQL SERVER 2022')

--STRING_SPLIT Fonksiyonu : Sonuç olarak bize tablo türünde table türünde deðer döndürür.


SELECT * FROM STRING_SPLIT('BTK Akademi eðitimleri ile SQL Server Eðitimi', ' ')

--STRING ifade deðerini boþluða göre parçalayarak tablo gibi bize veri döner.

SELECT * FROM STRING_SPLIT('ANKARA-SÝVAS-ÝZMÝR','-')


--STRING FONKSÝYONLARI ALIÞTIRMALAR

































































