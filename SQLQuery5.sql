SELECT lastname , firstname , city
	from customers
where lastname like '�%'
	order by lastname

SELECT lastname , firstname , city
	from customers
where lastname like '%����'
	order by lastname

SELECT lastname , reverse(lastname), firstname , city
	from customers
	where lastname like '%�%�%�'
	order by lastname

SELECT * 
	FROM accounts
	WHERE accno LIKE 'A_00'

SELECT *
	FROM customers
	WHERE city = '�����'


SELECT *
	FROM customers
	WHERE city like '�%' and lastname like '�%'