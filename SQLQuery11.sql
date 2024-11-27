select * 
	from branches
	where assets > some (select assets from branches where city = 'Θεσσαλονίκη')

select T.* 
	from branches as T,branches AS S
	where T.assets > S.assets and 
		s.city='Θεσσαλονίκη'



CREATE TABLE temp
	(bcode int , 
	bname varchar(30),
	city varchar(30),
	assets numeric(18,0));
	
	insert into temp (bcode,bname,city,assets)
		select bcode,bname,city,assets 
			from branches
		where city ='Αθήνα'

select * from temp  /*πρωτα τρεχει το select και εμτα το insert */ 