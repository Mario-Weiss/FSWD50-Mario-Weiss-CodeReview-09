SELECT 	CONCAT(s.first_name, ' ',s.last_name) as 'Staff Name',
		job.name as postion, 
        loc.name as 'Office Name',
        CONCAT(adr.street, ' ',adr.zip, ' ',adr.city) as Adress,
        CONCAT(tel.description,': ',tel.phone_number) as 'Phone' from staff s 

LEFT JOIN job_title job
on s.job_title_id = job.id

LEFT JOIN location loc
on s.location_id = loc.id

LEFT JOIN adress adr
on loc.adress_id = adr.adress_id

LEFT join phone_number tel
on s.id = tel.related_id

ORDER BY loc.id, job.id 