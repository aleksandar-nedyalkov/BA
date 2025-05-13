WITH DuplRecs
AS
(
	SELECT UniversalPlayerID, count(*) AS RowCounts
	FROM dbo.UC_PL_Player
	GROUP BY UniversalPlayerID
	HAVING count(*) > 1
)

SELECT *
FROM dbo.UC_PL_Player P
JOIN DuplRecs D on P.UniversalPlayerID = D.UniversalPlayerID
ORDER BY P.UniversalPlayerID