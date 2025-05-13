Select
TOP 1000
P.PLayerID,
P.FirstName,
P.LastName,
P.LastName2,
P.DisplayName,
PD.BirthDt
FROM tPLayer P
JOIN tPlayerAttributeDtl PD ON P.PlayerId = PD.PlayerID
WHERE 1 = 1
AND P.FirstName = 'John'
and P.LastName = 'Smith'
order by 6


Select


P.FirstName,
P.LastName,
PD.BirthDt,
COUNT(*) as RowsCount
FROM tPLayer P
JOIN tPlayerAttributeDtl PD ON P.PlayerId = PD.PlayerID
GROUP BY
P.FirstName,
P.LastName,
PD.BirthDt
HAVING count(*) > 1
order by 1,2,3