
SELECT TOWN,SUM(LINETOTAL) FROM VWORDERS2
WHERE CITY = 'ANKARA'
AND DATE_ BETWEEN '20190501' AND '20190601'
GROUP BY TOWN