--Elimizde makale kitap içeriklerinin bulunduðu küçük bir veritabaný var.
--Bu veritabanýnda hangi satýrda kaç kelime olduðunu hesaplayan kodu yazalým.


SELECT * FROM LAB09

'BTK Akademideki SQL Dersleri ile Veritabaný Uzmaný Olun!'



SELECT *, (SELECT COUNT(*) FROM string_split(FULLTEXT,' ')) WORDCOUNT FROM LAB09