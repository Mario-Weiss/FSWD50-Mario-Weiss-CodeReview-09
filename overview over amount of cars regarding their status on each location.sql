SELECT 	l.name as Office,
		concat (a.street,' ',a.zip,' ',a.city,' - ',c.name) as location,
        s.name as status,
        COUNT(s.id) as 'number of cars'
        from location l
        
INNER JOIN adress a
ON l.adress_id = a.adress_id

INNER JOIN country c
ON a.country_id = c.country_id

INNER JOIN car
ON l.id = car.location_id

INNER JOIN status s
ON car.status_id = s.id

GROUP BY s.id, l.id
ORDER BY l.id, s.id