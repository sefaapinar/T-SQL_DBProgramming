



SELECT PLAYER_API_ID, PLAYER_NAME,
dbo.GETCURRENTTEAM (PLAYER_API_ID) CURRENTTEAM,
dbo.GETCOUNTTEAM(PLAYER_API_ID) TEAMCOUNT,
dbo.GETMATCHCOUNT(PLAYER_API_ID) MATCHCOUNT,
dbo.GETPLAYINGYEAR(PLAYER_API_ID) PLAYINGYEAR

FROM LAB_PLAYER WHERE PLAYER_NAME LIKE '%Drogba%'



SELECT COUNT(DISTINCT TEAM) FROM LAB_MATCH_PLAYER WHERE PLAYERID = 282770





SELECT MIN(DATE_),MAX(DATE_) FROM LAB_MATCH_PLAYER WHERE PLAYERID = 282770

SELECT DATEDIFF(YEAR,MIN(DATE_),MAX(DATE_)) FROM LAB_MATCH_PLAYER
WHERE PLAYERID = 282770