


--Elimizde satýþlar tablomuz var. Bu tablo üzerinde kullanýcý tarafýnda girilecek birden fazla þehir ismine göre arama yapmak istiyoruz.
--Kullanýcý tarafýndan þehirler virgül ile ayýrt edilecek þekilde girilecektir.
--Buna göre bu þehirlerin cirosunu getirecek SQL Cümlesini yazalým


DECLARE @CITY AS VARCHAR(200) = 'Ýstanbul,Sivas,Ankara,Bolu,Bilecik'

SELECT CITY,SUM(AMOUNT) TOTALAMOUNT, SUM(TOTALPRICE) TOTALSALE  FRoM LAB05 WHERE CITY IN (SELECT VALUE FROM string_split(@CITY,',')) GROUP BY CITY 