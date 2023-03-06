

--Elimizde doðumtarihi alaný date türünde olmayan varchar türünde olan bir müþteri listesi var.
--Burada tabloya BIRTHDATE2 isimli DATE türünde bir alan ekleyiniz ve varchar türünde kaydedilmiþ BIRTHDATE alaný ile BIRTHDATE2 alanýný güncelleyiniz.
--Tarih formatý düzgün olmayan alanlar için 'NULL' deðeri ile update ediniz.


SELECT * FROM LAB02

ALTER TABLE LAB02 ADD BIRTHDATE2 DATE --Tabloya alan ekleme.

UPDATE LAB02 SET BIRTHDATE2 = CONVERT(DATE,BIRTHDATE)


SELECT CONVERT(DATE,'18.02.2022') --Hatalý Kullaným.