SELECT city, lastname,firstname
	FROM customers
ORDER BY city,lastname DESC

SELECT DISTINCT city 
	FROM customers
ORDER BY city

SELECT * 
	FROM accounts
	WHERE balance >= 20000 and balance <= 30000

SELECT * 
		FROM accounts
	WHERE balance between 20000 and 30000

SELECT * 
	FROM branches
	WHERE city = 'Αθήνα' and assets > 500000