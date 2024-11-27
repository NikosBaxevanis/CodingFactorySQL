SELECT lastname , firstname , city
	from customers
where lastname like 'Α%'
	order by lastname

SELECT lastname , firstname , city
	from customers
where lastname like '%άκης'
	order by lastname

SELECT lastname , reverse(lastname), firstname , city
	from customers
	where lastname like '%α%α%ά'
	order by lastname

SELECT * 
	FROM accounts
	WHERE accno LIKE 'A_00'

SELECT *
	FROM customers
	WHERE city = 'Αθήνα'


SELECT *
	FROM customers
	WHERE city like 'Α%' and lastname like 'Β%'