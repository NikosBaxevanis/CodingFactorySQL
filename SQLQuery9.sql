SELECT * FROM accounts

SELECT AVG(BALANCE)FROM accounts

SELECT SUM(BALANCE) AS ΜεσοςΟρος from accounts

select max(balance) as Μεγιστο from accounts

select min (balance) as Ελαχιστο from accounts

select count (balance) as Πληθος from accounts

select bcode,sum(balance) 
		from accounts 
	group by bcode
	having sum(balance) < 20000


select * from accounts order by bcode