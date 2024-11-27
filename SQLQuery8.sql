/*select customers.cid , firstname , lastname , accounts.accno , balance from customers inner join depositors on customers.cid=depositors.cid inner join accounts on depositors.accno = accounts.accno
order by lastname*/


select C.cid , firstname , lastname , A.accno , 
balance from customers C inner join depositors D on C.cid=D.cid 
inner join accounts A on D.accno = A.accno

order by C.lastname


select lastname, firstname 
	from customers inner join depositors on customers.cid=depositors.cid
	intersect
select lastname, firstname 
	from customers inner join borrowers on customers.cid=borrowers.cid


select distinct lastname, firstname
from customers inner join depositors on customers.cid=depositors.cid and
	customers.cid in (select cid from borrowers)

select lastname , firstname 
	from customers 
	where exists (select * from depositors where customers.cid=depositors.cid) and
	exists (select * from borrowers where customers.cid=borrowers.cid)
