


--Elimizde Avrupa Futbol kulüplerinin bulunduðu bir veriseti var.
--Burada bir çekiliþ ile rastgele iki takýmý eþleþtirecek þekilde bir sql yazalým.


SELECT * FROM LAB02 

WHERE ID = CONVERT(INT,RAND()* 299)


SELECT TOP 1 * FROM LAB02 ORDER BY NEWID()


