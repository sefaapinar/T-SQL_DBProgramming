
--Elimizde mail adresleri bulunan bir müþteri listesi vardýr. Her bir müþterinin gmail, hotmail gibi mail adresleri mevcuttur.
--Email alanýný kullanarak hangi servis saðlayýcýdan toplamda kaç kiþi olduðunu gösteren listeyi hazýrlayalým.

SELECT * FROM LAB05 


SELECT ('sefa.pinar@gmail.com')

SELECT CHARINDEX('@','sefa.pinar@gmail.com')

SELECT RIGHT('sefa.pinar@gmail.com',10)


SELECT RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL)),
COUNT(*) FROM LAB05 GROUP BY RIGHT(EMAIL,LEN(EMAIL) - CHARINDEX('@',EMAIL))
ORDER BY 2 DESC