SELECT bname , accno
	from branches inner join accounts on branches.bcode = accounts.bcode
	order by bname 

SELECT branches.bcode , accno , bname , balance
	from branches , accounts
where branches.bcode = accounts.bcode
	order by bname

