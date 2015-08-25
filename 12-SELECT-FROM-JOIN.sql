SELECT stars.name AS starname,
((stars.class+7)*intensity)*1000000 AS startemp,
planets.name AS planetname,
(((stars.class+7)*intensity)*1000000-(50*planets.orbitdistance)) AS planettemp
FROM stars
LEFT OUTER JOIN planets
ON stars.starid=planets.starid
WHERE stars.starid>500
AND stars.starid<600
