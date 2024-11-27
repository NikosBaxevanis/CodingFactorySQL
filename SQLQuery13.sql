CREATE VIEW LoanPerCustomer AS
select firstname, lastname , SUM(amount) AS TOTAL
	from customers C join borrowers B ON C.cid=B.cid
		join loans L on L.lnum=B.lnum
	group by firstname, lastname
	having SUM(amount) > 10000

