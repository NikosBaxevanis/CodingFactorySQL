SELECT * FROM accounts

SELECT AVG(BALANCE)FROM accounts

SELECT SUM(BALANCE) AS ��������� from accounts

select max(balance) as ������� from accounts

select min (balance) as �������� from accounts

select count (balance) as ������ from accounts

select bcode,sum(balance) 
		from accounts 
	group by bcode
	having sum(balance) < 20000


select * from accounts order by bcode