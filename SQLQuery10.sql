select * from accounts
select * from branches

select bname,city,sum(balance)
	from branches inner join accounts on branches.bcode=accounts.bcode
	where city='Αθήνα'
group by bname,city
having sum(balance) > 50000


select C.cid , firstname,lastname,city, sum(amount) as Δανεια
from customers C join borrowers B on C.cid=B.cid 
				join loans L on B.lnum=L.lnum
	where city='Θεσσαλονίκη'
group by C.cid, firstname,lastname, city

having sum(amount) >10000
order by city
	
