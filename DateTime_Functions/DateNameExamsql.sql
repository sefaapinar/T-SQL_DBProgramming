

SET LANGUAGE Turkish

SELECT DATEPART(DW,DATE_) DAYNR,
DATENAME(DW,DATE_) DW,
SUM(TOTALPRICE) TOTALSALE
FROM LAB04

GROUP BY DATENAME(DW,DATE_),DATEPART(DW,DATE_)
ORDER BY 1