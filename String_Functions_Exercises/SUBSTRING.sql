

SELECT *, FROM LAB06 


SELECT '+90 (' + SUBSTRING('03563355976',2,3) + ')' + ' ' + 
SUBSTRING('03563355976',5,3) + ' ' + SUBSTRING('03563355976',8,2) + ' ' + 
SUBSTRING('03563355976',10,2)


SELECT '+90 (' + SUBSTRING(TELNR,2,3) + ')' + ' ' + 
SUBSTRING(TELNR,5,3) + ' ' + SUBSTRING(TELNR,8,2) + ' ' + SUBSTRING(TELNR,10,2) FROM LAB06