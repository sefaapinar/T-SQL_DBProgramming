

SELECT * FROM TESTDB_TSQL.dbo.DATES


DECLARE @I AS INT = 0
WHILE @I <10
BEGIN
INSERT INTO DATES (DATE_) VALUES (GETDATE()) --While komutu ile bir þart koþulu koyarýz ve bu þart koþuluna göre iþlemleri sürdürürüz.
WAITFOR DELAY '00:00:01' --SQL iþlemler de bekleme komutu
SET @I = @I + 1
END

TRUNCATE TABLE TESTDB_TSQL.dbo.DATES