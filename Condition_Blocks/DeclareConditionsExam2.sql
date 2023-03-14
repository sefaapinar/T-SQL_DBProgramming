

--Elimizde plaka bilgileri ile birlikte araç verilerinin tutulduðu bir tablo var. 
--Bu tabloda araçlarýn marka bazýnda model yýlý ile trafiðe çýkýþ zamaný arasýndaki farka göre sayýsýný getirecek sorguyu yazalým.


SELECT 
YEAR_, YEAR(LICENCEDATE),LICENCEDATE AS TRAFIGECIKISBILGISI,
CASE 
WHEN YEAR(LICENCEDATE)-YEAR_ = 0 THEN 'AYNI YIL TRAFÝÐE ÇIKMIÞ ARAÇ'
WHEN YEAR(LICENCEDATE)-YEAR_ = 1 THEN 'BÝR YIL TRAFÝÐE ÇIKMIÞ ARAÇ'
WHEN YEAR(LICENCEDATE)-YEAR_ = 2 THEN 'ÝKÝ YIL TRAFÝÐE ÇIKMIÞ ARAÇ'
END AS STATUS_,
COUNT(*) AS COUNT_
FROM LAB02 
GROUP BY BRAND, YEAR(LICENCEDATE)-YEAR_
ORDER BY 1,2