

--Elimizde bir sat��lar tablosu var, bir de m��teriler tablosu var. Bu tablodan rastgele se�ilen 10 m��teriye bu zamana kadar yapm�� oldu�u al��veri�in %50'si kadar
--hediye �eki verme kampanyas� yap�lmas� planlan�yor. Bir script ile 10 m��teri ve bu 10 m��teriye verilecek hediye �eklerini hesaplayan t-sql scriptini yaz�n�z.

SELECT * FROM LAB04_CUSTOMERS


DECLARE @CUSTOMERID AS INT
SELECT TOP 1  @CUSTOMERID = ID FROM LAB04_CUSTOMERS
WHERE ID NOT IN(SELECT CUSTOMERID FROM RAFFLE )ORDER BY NEWID()

DECLARE @CUSTOMERNAME AS VARCHAR(100)
DECLARE @TOTALSALE AS FLOAT
DECLARE @GIFTPERCENT AS FLOAT = 50
DECLARE @GIFTTOTAL AS FLOAT 

SELECT 
@CUSTOMERNAME = C.CUSTOMERNAME,
@TOTALSALE = SUM(TOTALPRICE),@GIFTTOTAL= SUM(TOTALPRICE)*@GIFTPERCENT / 100 
FROM LAB04_SALES S
JOIN LAB04_CUSTOMERS C ON C.ID = S.CUSTOMERID
WHERE CUSTOMERID = @CUSTOMERID 
GROUP BY C.ID,C.CUSTOMERNAME

SELECT * FROM RAFFLE 


INSERT INTO RAFFLE (CUSTOMERID,CUSTOMERNAME,TOTALSALE,GIFTPERCENT,GIFTTOTAL)
VALUES (@CUSTOMERID,@CUSTOMERNAME,@TOTALSALE,@GIFTPERCENT,@GIFTTOTAL)

CREATE TABLE RAFFLE(ID INT IDENTITY(1,1),CUSTOMERID INT, CUSTOMERNAME VARCHAR(100),TOTALSALE FLOAT,GIFTPERCENT FLOAT,GIFTTOTAL FLOAT)