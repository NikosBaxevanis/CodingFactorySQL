SELECT lastname , firstname , accno  
	from customers join depositors  on customers.cid = depositors.cid
	order by lastname

SELECT lastname , firstname , accno  
	from customers left join depositors  on customers.cid = depositors.cid
	order by accno

SELECT lastname AS епымуло , firstname AS омола, accno AS аяихлос_коцаяиаслоу 
	from customers C left join depositors D on c.cid = d.cid
	order by accno

SELECT accno , bcode , balance , balance * 1.05 as me_toko
	FROM accounts