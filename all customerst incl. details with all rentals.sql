SELECT 	CONCAT (c.first_name, ' ', c.last_name) as name,
		CONCAT (a.street, ' ',a.zip,' ',a.city,' - ',country.name) as adress,
        CONCAT (p.description,' ',p.phone_number) as phone,
        e.email_adress as email,
        d.class as 'drinving license',
        CONCAT (car.make,' ',car.model,' ',car.year) as car,
        CONCAT (r.date,' ',r.time) as date,
        l.name as location,
        s.name as status,
        CONCAT(st.first_name,' ',st.last_name) as processor from customer c
 
 LEFT JOIN adress a
 ON c.id = a.related_id
 
 INNER JOIN country
 ON a.country_id = country.country_id
 
 LEFT JOIN phone_number p
 ON c.id = p.related_id
 
 LEFT JOIN email e
 ON c.id = e.related_id
 
 LEFT JOIN drivinglicense d
 ON c.licensetype = d.type
 
 LEFT JOIN rental r
 ON c.id = r.customer_id
 
 LEFT JOIN car
 ON r.car_id = car.car_id
 
 LEFT JOIN location l
 ON r.location_id = l.id
 
 LEFT JOIN status s
 ON r.status_id = s.id
 
 LEFT JOIN staff st
 ON r.staff_id = st.id